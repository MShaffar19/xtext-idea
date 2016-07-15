/*
 * generated by Xtext
 */
grammar PsiInternalLocationProviderTestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.resource.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.resource.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.resource.idea.lang.LocationProviderTestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.resource.services.LocationProviderTestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected LocationProviderTestLanguageGrammarAccess grammarAccess;

	protected LocationProviderTestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalLocationProviderTestLanguageParser(PsiBuilder builder, TokenStream input, LocationProviderTestLanguageElementTypeProvider elementTypeProvider, LocationProviderTestLanguageGrammarAccess grammarAccess) {
		this(input);
		setPsiBuilder(builder);
    	this.grammarAccess = grammarAccess;
		this.elementTypeProvider = elementTypeProvider;
	}

	@Override
	protected String getFirstRuleName() {
		return "Model";
	}

}

//Entry rule entryRuleModel
entryRuleModel returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getModelElementType()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [Boolean current=false]
:
	(
		(
			(
				{
					markComposite(elementTypeProvider.getModel_ElementsElementParserRuleCall_0_0ElementType());
				}
				lv_elements_0_0=ruleElement
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)*
		(
			(
				{
					markComposite(elementTypeProvider.getModel_ComponentsComponentParserRuleCall_1_0ElementType());
				}
				lv_components_1_0=ruleComponent
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)*
	)
;

//Entry rule entryRuleElement
entryRuleElement returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getElementElementType()); }
	iv_ruleElement=ruleElement
	{ $current=$iv_ruleElement.current; }
	EOF;

// Rule Element
ruleElement returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getElement_ElementKeyword_0ElementType());
		}
		otherlv_0='element'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getElement_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getElement_SinglerefKeyword_2_0ElementType());
			}
			otherlv_2='singleref'
			{
				doneLeaf(otherlv_2);
			}
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getElement_SinglerefElementCrossReference_2_1_0ElementType());
					}
					otherlv_3=RULE_ID
					{
						doneLeaf(otherlv_3);
					}
				)
			)
		)?
		(
			{
				markLeaf(elementTypeProvider.getElement_MultirefKeyword_3_0ElementType());
			}
			otherlv_4='multiref'
			{
				doneLeaf(otherlv_4);
			}
			(
				(
					{
						if (!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						markLeaf(elementTypeProvider.getElement_MultirefsElementCrossReference_3_1_0ElementType());
					}
					otherlv_5=RULE_ID
					{
						doneLeaf(otherlv_5);
					}
				)
			)
		)*
	)
;

//Entry rule entryRuleComponent
entryRuleComponent returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getComponentElementType()); }
	iv_ruleComponent=ruleComponent
	{ $current=$iv_ruleComponent.current; }
	EOF;

// Rule Component
ruleComponent returns [Boolean current=false]
:
	(
		(
			{
				markComposite(elementTypeProvider.getComponent_BusParserRuleCall_0_0ElementType());
			}
			this_Bus_0=ruleBus
			{
				$current = $this_Bus_0.current;
				doneComposite();
			}
			    |
			{
				markComposite(elementTypeProvider.getComponent_ProcessorParserRuleCall_0_1ElementType());
			}
			this_Processor_1=ruleProcessor
			{
				$current = $this_Processor_1.current;
				doneComposite();
			}
		)
		(
			{
				markLeaf(elementTypeProvider.getComponent_ModesKeyword_1_0ElementType());
			}
			otherlv_2='modes'
			{
				doneLeaf(otherlv_2);
			}
			(
				(
					(
						{
							markComposite(elementTypeProvider.getComponent_ModeModeParserRuleCall_1_1_0_0ElementType());
						}
						lv_mode_3_0=ruleMode
						{
							doneComposite();
							if(!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
					)
				)
				    |
				(
					(
						{
							markComposite(elementTypeProvider.getComponent_TransitionTransitionParserRuleCall_1_1_1_0ElementType());
						}
						lv_transition_4_0=ruleTransition
						{
							doneComposite();
							if(!$current) {
								associateWithSemanticElement();
								$current = true;
							}
						}
					)
				)
			)+
		)?
		{
			markLeaf(elementTypeProvider.getComponent_EndKeyword_2ElementType());
		}
		otherlv_5='end'
		{
			doneLeaf(otherlv_5);
		}
		{
			markLeaf(elementTypeProvider.getComponent_SemicolonKeyword_3ElementType());
		}
		otherlv_6=';'
		{
			doneLeaf(otherlv_6);
		}
	)
;

//Entry rule entryRuleBus
entryRuleBus returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getBusElementType()); }
	iv_ruleBus=ruleBus
	{ $current=$iv_ruleBus.current; }
	EOF;

// Rule Bus
ruleBus returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getBus_BusKeyword_0ElementType());
		}
		otherlv_0='bus'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getBus_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		(
			(
				{
					markComposite(elementTypeProvider.getBus_PortPortParserRuleCall_2_0ElementType());
				}
				lv_port_2_0=rulePort
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)*
	)
;

//Entry rule entryRuleProcessor
entryRuleProcessor returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getProcessorElementType()); }
	iv_ruleProcessor=ruleProcessor
	{ $current=$iv_ruleProcessor.current; }
	EOF;

// Rule Processor
ruleProcessor returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getProcessor_ProcessorKeyword_0ElementType());
		}
		otherlv_0='processor'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getProcessor_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		(
			(
				{
					markComposite(elementTypeProvider.getProcessor_DataDataParserRuleCall_2_0ElementType());
				}
				lv_data_2_0=ruleData
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)*
	)
;

//Entry rule entryRuleMode
entryRuleMode returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getModeElementType()); }
	iv_ruleMode=ruleMode
	{ $current=$iv_ruleMode.current; }
	EOF;

// Rule Mode
ruleMode returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getMode_ModeKeyword_0ElementType());
		}
		otherlv_0='mode'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getMode_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getMode_SemicolonKeyword_2ElementType());
		}
		otherlv_2=';'
		{
			doneLeaf(otherlv_2);
		}
	)
;

//Entry rule entryRuleTransition
entryRuleTransition returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getTransitionElementType()); }
	iv_ruleTransition=ruleTransition
	{ $current=$iv_ruleTransition.current; }
	EOF;

// Rule Transition
ruleTransition returns [Boolean current=false]
:
	(
		(
			(
				{
					markLeaf(elementTypeProvider.getTransition_NameIDTerminalRuleCall_0_0ElementType());
				}
				lv_name_0_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_0_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getTransition_ColonKeyword_1ElementType());
		}
		otherlv_1=':'
		{
			doneLeaf(otherlv_1);
		}
		(
			(
				{
					if (!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					markLeaf(elementTypeProvider.getTransition_SourceModeCrossReference_2_0ElementType());
				}
				otherlv_2=RULE_ID
				{
					doneLeaf(otherlv_2);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getTransition_HyphenMinusGreaterThanSignKeyword_3ElementType());
		}
		otherlv_3='->'
		{
			doneLeaf(otherlv_3);
		}
		(
			(
				{
					if (!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					markLeaf(elementTypeProvider.getTransition_DestinationModeCrossReference_4_0ElementType());
				}
				otherlv_4=RULE_ID
				{
					doneLeaf(otherlv_4);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getTransition_SemicolonKeyword_5ElementType());
		}
		otherlv_5=';'
		{
			doneLeaf(otherlv_5);
		}
	)
;

//Entry rule entryRulePort
entryRulePort returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getPortElementType()); }
	iv_rulePort=rulePort
	{ $current=$iv_rulePort.current; }
	EOF;

// Rule Port
rulePort returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getPort_PortKeyword_0ElementType());
		}
		otherlv_0='port'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getPort_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getPort_SemicolonKeyword_2ElementType());
		}
		otherlv_2=';'
		{
			doneLeaf(otherlv_2);
		}
	)
;

//Entry rule entryRuleData
entryRuleData returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getDataElementType()); }
	iv_ruleData=ruleData
	{ $current=$iv_ruleData.current; }
	EOF;

// Rule Data
ruleData returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getData_DataKeyword_0ElementType());
		}
		otherlv_0='data'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getData_NameIDTerminalRuleCall_1_0ElementType());
				}
				lv_name_1_0=RULE_ID
				{
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
				{
					doneLeaf(lv_name_1_0);
				}
			)
		)
		{
			markLeaf(elementTypeProvider.getData_SemicolonKeyword_2ElementType());
		}
		otherlv_2=';'
		{
			doneLeaf(otherlv_2);
		}
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
