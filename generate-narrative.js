#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

/**
 * Generate narrative HTML for FHIR Questionnaire resources
 * Based on the narrative table format from FHIR/SDC examples
 */

function generateQuestionnaireNarrative(questionnaire) {
    const baseUrl = questionnaire.url || '';
    const version = questionnaire.version || '';
    const title = questionnaire.title || questionnaire.id;
    const description = questionnaire.description || '';
    
    // Start narrative HTML
    let html = `<div xmlns="http://www.w3.org/1999/xhtml">`;
    
    // Header
    html += `<p class="res-header-id"><b>Generated Narrative: Questionnaire ${questionnaire.id}</b></p>`;
    html += `<a name="${questionnaire.id}"> </a>`;
    html += `<a name="hc${questionnaire.id}"> </a>`;
    
    // Profile info
    if (questionnaire.meta?.profile) {
        html += `<div style="display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%">`;
        html += `<p style="margin-bottom: 0px"/>`;
        html += `<p style="margin-bottom: 0px">Profile: <a href="${questionnaire.meta.profile[0]}">${questionnaire.meta.profile[0].split('/').pop()}${version ? ` version: ${version}` : ''}</a></p>`;
        html += `</div>`;
    }
    
    // Description
    if (description) {
        html += `<p>${description}</p>`;
    }
    
    // Items table
    html += generateItemsTable(questionnaire.item || [], baseUrl, questionnaire.id);
    
    html += `</div>`;
    
    return {
        status: "extensions",
        div: html
    };
}

function generateItemsTable(items, baseUrl, questionnaireId) {
    let html = `<table border="1" cellpadding="0" cellspacing="0" style="border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;">`;
    
    // Table header
    html += `<tr style="border: 2px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top">`;
    html += `<th style="vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px" class="hierarchy">`;
    html += `<a href="https://hl7.org/fhir/R4/formats.html#table" title="The linkID for the item">LinkID</a></th>`;
    html += `<th style="vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px" class="hierarchy">`;
    html += `<a href="https://hl7.org/fhir/R4/formats.html#table" title="Text for the item">Text</a></th>`;
    html += `<th style="vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px" class="hierarchy">`;
    html += `<a href="https://hl7.org/fhir/R4/formats.html#table" title="Minimum and Maximum # of times the item can appear in the instance">Cardinality</a></th>`;
    html += `<th style="vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px" class="hierarchy">`;
    html += `<a href="https://hl7.org/fhir/R4/formats.html#table" title="The type of the item">Type</a></th>`;
    html += `<th style="vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; padding-top: 3px; padding-bottom: 3px" class="hierarchy">`;
    html += `<a href="https://hl7.org/fhir/R4/formats.html#table" title="Additional information about the item">Description &amp; Constraints</a>`;
    html += `</th></tr>`;
    
    // Root row
    html += `<tr style="border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white">`;
    html += `<td style="vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)" class="hierarchy">`;
    html += `<img src="tbl_spacer.png" alt="." style="background-color: inherit" class="hierarchy"/>`;
    html += `<img src="icon_q_root.gif" alt="." style="background-color: white; background-color: inherit" title="QuestionnaireRoot" class="hierarchy"/> ${questionnaireId}</td>`;
    html += `<td style="vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px" class="hierarchy">${questionnaireId}</td>`;
    html += `<td style="vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px" class="hierarchy"/>`;
    html += `<td style="vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px" class="hierarchy">Questionnaire</td>`;
    html += `<td style="vertical-align: top; text-align : var(--ig-left,left); background-color: white; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px" class="hierarchy">${baseUrl}#${questionnaireId}</td>`;
    html += `</tr>`;
    
    // Add items
    items.forEach((item, index) => {
        html += generateItemRow(item, index, 1, items.length);
    });
    
    html += `</table>`;
    
    // Legend
    html += `<br/><a href="https://hl7.org/fhir/R4/formats.html#table" title="Legend for this format">`;
    html += `<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAABmJLR0QA/wD/AP+gvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH3goXBCwdPqAP0wAAAldJREFUOMuNk0tIlFEYhp9z/vE2jHkhxXA0zJCMitrUQlq4lnSltEqCFhFG2MJFhIvIFpkEWaTQqjaWZRkp0g26URZkTpbaaOJkDqk10szoODP//7XIMUe0elcfnPd9zsfLOYplGrpRwZaqTtw3K7PtGem7Q6FoidbGgqHVy/HRb669R+56zx7eRV1L31JGxYbBtjKK93cxeqfyQHbehkZbUkK20goELEuIzEd+dHS+qz/Y8PTSif0FnGkbiwcAjHaU1+QWOptFiyCLp/LnKptpqIuXHx6rbR26kJcBX3yLgBfnd7CxwJmflpP2wUg0HIAoUUpZBmKzELGWcN8nAr6Gpu7tLU/CkwAaoKTWRSQyt89Q8w6J+oVQkKnBoblH7V0PPvUOvDYXfopE/SJmALsxnVm6LbkotrUtNowMeIrVrBcBpaMmdS0j9df7abpSuy7HWehwJdt1lhVwi/J58U5beXGAF6c3UXLycw1wdFklArBn87xdh0ZsZtArghBdAA3+OEDVubG4UEzP6x1FOWneHh2VDAHBAt80IbdXDcesNoCvs3E5AFyNSU5nbrDPZpcUEQQTFZiEVx+51fxMhhyJEAgvlriadIJZZksRuwBYMOPBbO3hePVVqgEJhFeUuFLhIPkRP6BQLIBrmMenujm/3g4zc398awIe90Zb5A1vREALqneMcYgP/xVQWlG+Ncu5vgwwlaUNx+3799rfe96u9K0JSDXcOzOTJg4B6IgmXfsygc7/Bvg9g9E58/cDVmGIBOP/zT8Bz1zqWqpbXIsd0O9hajXfL6u4BaOS6SeWAAAAAElFTkSuQmCC" alt="doco" style="background-color: inherit"/> Documentation for this format</a>`;
    
    return html;
}

function generateItemRow(item, index, level, totalSiblings) {
    const isLast = index === totalSiblings - 1;
    const isAlternate = index % 2 === 1;
    const bgColor = isAlternate ? '#F7F7F7' : 'white';
    
    let html = `<tr style="border: 1px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: ${bgColor}">`;
    
    // LinkID column with hierarchy indicators
    html += `<td style="vertical-align: top; text-align : var(--ig-left,left); background-color: ${bgColor}; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap;" id="item.${item.linkId}" class="hierarchy">`;
    
    // Add spacing and hierarchy lines
    for (let i = 0; i < level; i++) {
        html += `<img src="tbl_spacer.png" alt="." style="background-color: inherit" class="hierarchy"/>`;
    }
    
    if (isLast) {
        html += `<img src="tbl_vjoin_end.png" alt="." style="background-color: inherit" class="hierarchy"/>`;
    } else {
        html += `<img src="tbl_vjoin.png" alt="." style="background-color: inherit" class="hierarchy"/>`;
    }
    
    // Item type icon
    const iconMap = {
        'group': 'icon-q-group.png',
        'choice': 'icon-q-coding.png',
        'display': 'icon-q-string.png',
        'decimal': 'icon-q-quantity.png',
        'integer': 'icon-q-quantity.png',
        'quantity': 'icon-q-quantity.png',
        'string': 'icon-q-string.png',
        'text': 'icon-q-string.png'
    };
    
    const icon = iconMap[item.type] || 'icon-q-string.png';
    html += `<img src="${icon}" alt="." style="background-color: ${bgColor}; background-color: inherit" title="${item.type}" class="hierarchy"/> ${item.linkId}</td>`;
    
    // Text column
    const text = getDisplayText(item);
    html += `<td style="vertical-align: top; text-align : var(--ig-left,left); background-color: ${bgColor}; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px" class="hierarchy">${text}</td>`;
    
    // Cardinality column
    const cardinality = item.required ? '1..1' : '0..1';
    html += `<td style="vertical-align: top; text-align : var(--ig-left,left); background-color: ${bgColor}; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px" class="hierarchy">${cardinality}</td>`;
    
    // Type column
    html += `<td style="vertical-align: top; text-align : var(--ig-left,left); background-color: ${bgColor}; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px" class="hierarchy">`;
    html += `<a href="https://hl7.org/fhir/R4/codesystem-item-type.html#item-type-${item.type}">${item.type}</a></td>`;
    
    // Description column
    let description = '';
    if (item.answerValueSet) {
        description = `Value Set: <a href="${item.answerValueSet}">${item.answerValueSet.split('/').pop()}</a>`;
    } else if (item.answerOption && item.answerOption.length > 0) {
        description = `${item.answerOption.length} answer options`;
    }
    if (item.readOnly) {
        description += description ? ', ' : '';
        description += 'Read-only';
    }
    html += `<td style="vertical-align: top; text-align : var(--ig-left,left); background-color: ${bgColor}; border: 1px #F0F0F0 solid; padding:0px 4px 0px 4px" class="hierarchy">${description}</td>`;
    
    html += `</tr>`;
    
    // Add child items recursively
    if (item.item && item.item.length > 0) {
        item.item.forEach((childItem, childIndex) => {
            html += generateItemRow(childItem, childIndex, level + 1, item.item.length);
        });
    }
    
    return html;
}

function getDisplayText(item) {
    if (item.text) {
        return item.text;
    }
    if (item.prefix) {
        return `${item.prefix}. ${item.linkId}`;
    }
    return item.linkId;
}

// Process all questionnaire files
function processQuestionnaireFiles() {
    const resourcesDir = path.join(__dirname, 'fsh-generated', 'resources');
    const files = fs.readdirSync(resourcesDir);
    
    const questionnaireFiles = files.filter(file => 
        file.startsWith('Questionnaire-') && file.endsWith('.json')
    );
    
    console.log(`Found ${questionnaireFiles.length} questionnaire files to process:`);
    
    questionnaireFiles.forEach(file => {
        console.log(`Processing ${file}...`);
        
        const filePath = path.join(resourcesDir, file);
        const content = fs.readFileSync(filePath, 'utf8');
        const questionnaire = JSON.parse(content);
        
        // Generate narrative
        const narrative = generateQuestionnaireNarrative(questionnaire);
        
        // Add narrative to questionnaire
        questionnaire.text = narrative;
        
        // Write back to file
        fs.writeFileSync(filePath, JSON.stringify(questionnaire, null, 2));
        
        console.log(`✓ Added narrative to ${questionnaire.id}`);
    });
    
    console.log(`\nCompleted! Generated narratives for ${questionnaireFiles.length} questionnaires.`);
}

// Run if called directly
if (require.main === module) {
    processQuestionnaireFiles();
}

module.exports = { generateQuestionnaireNarrative };