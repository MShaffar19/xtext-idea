/*
 * generated by Xtext
 */
grammar PsiInternalDatatypeRulesTestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.parser.datatyperules.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.parser.datatyperules.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.parser.datatyperules.idea.lang.DatatypeRulesTestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.datatyperules.services.DatatypeRulesTestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected DatatypeRulesTestLanguageGrammarAccess grammarAccess;

	protected DatatypeRulesTestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalDatatypeRulesTestLanguageParser(PsiBuilder builder, TokenStream input, DatatypeRulesTestLanguageElementTypeProvider elementTypeProvider, DatatypeRulesTestLanguageGrammarAccess grammarAccess) {
		this(input);
		setPsiBuilder(builder);
    	this.grammarAccess = grammarAccess;
		this.elementTypeProvider = elementTypeProvider;
	}

	@Override
	protected String getFirstRuleName() {
		return "CompositeModel";
	}

}

//Entry rule entryRuleCompositeModel
entryRuleCompositeModel returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getCompositeModelElementType()); }
	iv_ruleCompositeModel=ruleCompositeModel
	{ $current=$iv_ruleCompositeModel.current; }
	EOF;

// Rule CompositeModel
ruleCompositeModel returns [Boolean current=false]
:
	(
		(
			{
				markComposite(elementTypeProvider.getCompositeModel_ModelModelParserRuleCall_0ElementType());
			}
			lv_model_0_0=ruleModel
			{
				doneComposite();
				if(!$current) {
					associateWithSemanticElement();
					$current = true;
				}
			}
		)
	)+
;

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
					markComposite(elementTypeProvider.getModel_IdNestedModelIdParserRuleCall_0_0ElementType());
				}
				lv_id_0_0=ruleNestedModelId
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
		(
			{
				markLeaf(elementTypeProvider.getModel_ColonKeyword_1_0ElementType());
			}
			otherlv_1=':'
			{
				doneLeaf(otherlv_1);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_ValueFractionParserRuleCall_1_1_0ElementType());
					}
					lv_value_2_0=ruleFraction
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
		)?
		(
			{
				markLeaf(elementTypeProvider.getModel_NumberSignKeyword_2_0ElementType());
			}
			otherlv_3='#'
			{
				doneLeaf(otherlv_3);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_VectorVectorParserRuleCall_2_1_0ElementType());
					}
					lv_vector_4_0=ruleVector
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
		)?
		(
			{
				markLeaf(elementTypeProvider.getModel_PlusSignKeyword_3_0ElementType());
			}
			otherlv_5='+'
			{
				doneLeaf(otherlv_5);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_DotsDotsParserRuleCall_3_1_0ElementType());
					}
					lv_dots_6_0=ruleDots
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
		)?
		(
			{
				markLeaf(elementTypeProvider.getModel_AsteriskKeyword_4_0ElementType());
			}
			otherlv_7='*'
			{
				doneLeaf(otherlv_7);
			}
			(
				(
					{
						markComposite(elementTypeProvider.getModel_DoubleDoubleParserRuleCall_4_1_0ElementType());
					}
					lv_double_8_0=ruleDouble
					{
						doneComposite();
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
				)
			)
		)?
		{
			markLeaf(elementTypeProvider.getModel_SemicolonKeyword_5ElementType());
		}
		otherlv_9=';'
		{
			doneLeaf(otherlv_9);
		}
	)
;

//Entry rule entryRuleModelId
entryRuleModelId returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getModelIdElementType()); }
	iv_ruleModelId=ruleModelId
	{ $current=$iv_ruleModelId.current; }
	EOF;

// Rule ModelId
ruleModelId returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getModelId_IDTerminalRuleCall_0ElementType());
		}
		this_ID_0=RULE_ID
		{
			doneLeaf(this_ID_0);
		}
		{
			markLeaf(elementTypeProvider.getModelId_FullStopKeyword_1ElementType());
		}
		kw='.'
		{
			doneLeaf(kw);
		}
		{
			markLeaf(elementTypeProvider.getModelId_IDTerminalRuleCall_2ElementType());
		}
		this_ID_2=RULE_ID
		{
			doneLeaf(this_ID_2);
		}
	)
;

//Entry rule entryRuleNestedModelId
entryRuleNestedModelId returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getNestedModelIdElementType()); }
	iv_ruleNestedModelId=ruleNestedModelId
	{ $current=$iv_ruleNestedModelId.current; }
	EOF;

// Rule NestedModelId
ruleNestedModelId returns [Boolean current=false]
:
	(
		{
			markComposite(elementTypeProvider.getNestedModelId_ModelIdParserRuleCall_0ElementType());
		}
		ruleModelId
		{
			doneComposite();
		}
		{
			markLeaf(elementTypeProvider.getNestedModelId_FullStopKeyword_1ElementType());
		}
		kw='.'
		{
			doneLeaf(kw);
		}
		{
			markComposite(elementTypeProvider.getNestedModelId_ModelIdParserRuleCall_2ElementType());
		}
		ruleModelId
		{
			doneComposite();
		}
	)
;

//Entry rule entryRuleFraction
entryRuleFraction returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getFractionElementType()); }
	iv_ruleFraction=ruleFraction
	{ $current=$iv_ruleFraction.current; }
	EOF;

// Rule Fraction
ruleFraction returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getFraction_INTTerminalRuleCall_0ElementType());
		}
		this_INT_0=RULE_INT
		{
			doneLeaf(this_INT_0);
		}
		(
			{
				markLeaf(elementTypeProvider.getFraction_SolidusKeyword_1_0ElementType());
			}
			kw='/'
			{
				doneLeaf(kw);
			}
			{
				markLeaf(elementTypeProvider.getFraction_INTTerminalRuleCall_1_1ElementType());
			}
			this_INT_2=RULE_INT
			{
				doneLeaf(this_INT_2);
			}
		)?
	)
;

//Entry rule entryRuleVector
entryRuleVector returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getVectorElementType()); }
	iv_ruleVector=ruleVector
	{ $current=$iv_ruleVector.current; }
	EOF;

// Rule Vector
ruleVector returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getVector_LeftParenthesisKeyword_0ElementType());
		}
		kw='('
		{
			doneLeaf(kw);
		}
		{
			markLeaf(elementTypeProvider.getVector_INTTerminalRuleCall_1ElementType());
		}
		this_INT_1=RULE_INT
		{
			doneLeaf(this_INT_1);
		}
		{
			markLeaf(elementTypeProvider.getVector_INTTerminalRuleCall_2ElementType());
		}
		this_INT_2=RULE_INT
		{
			doneLeaf(this_INT_2);
		}
		{
			markLeaf(elementTypeProvider.getVector_RightParenthesisKeyword_3ElementType());
		}
		kw=')'
		{
			doneLeaf(kw);
		}
	)
;

//Entry rule entryRuleDots
entryRuleDots returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getDotsElementType()); }
	iv_ruleDots=ruleDots
	{ $current=$iv_ruleDots.current; }
	EOF;

// Rule Dots
ruleDots returns [Boolean current=false]
:
	(
		(
			{
				markLeaf(elementTypeProvider.getDots_FullStopKeyword_0_0ElementType());
			}
			kw='.'
			{
				doneLeaf(kw);
			}
			{
				markLeaf(elementTypeProvider.getDots_FullStopKeyword_0_1ElementType());
			}
			kw='.'
			{
				doneLeaf(kw);
			}
		)
		    |
		{
			markLeaf(elementTypeProvider.getDots_FullStopFullStopKeyword_1ElementType());
		}
		kw='..'
		{
			doneLeaf(kw);
		}
	)
;

//Entry rule entryRuleDouble
entryRuleDouble returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getDoubleElementType()); }
	iv_ruleDouble=ruleDouble
	{ $current=$iv_ruleDouble.current; }
	EOF;

// Rule Double
ruleDouble returns [Boolean current=false]
:
	(
		(
			{
				markLeaf(elementTypeProvider.getDouble_HyphenMinusKeyword_0ElementType());
			}
			kw='-'
			{
				doneLeaf(kw);
			}
		)?
		(
			{
				markLeaf(elementTypeProvider.getDouble_INTTerminalRuleCall_1ElementType());
			}
			this_INT_1=RULE_INT
			{
				doneLeaf(this_INT_1);
			}
		)?
		{
			markLeaf(elementTypeProvider.getDouble_FullStopKeyword_2ElementType());
		}
		kw='.'
		{
			doneLeaf(kw);
		}
		{
			markLeaf(elementTypeProvider.getDouble_INTTerminalRuleCall_3ElementType());
		}
		this_INT_3=RULE_INT
		{
			doneLeaf(this_INT_3);
		}
		(
			{
				markLeaf(elementTypeProvider.getDouble_EKeyword_4_0ElementType());
			}
			kw='E'
			{
				doneLeaf(kw);
			}
			(
				{
					markLeaf(elementTypeProvider.getDouble_HyphenMinusKeyword_4_1ElementType());
				}
				kw='-'
				{
					doneLeaf(kw);
				}
			)?
			{
				markLeaf(elementTypeProvider.getDouble_INTTerminalRuleCall_4_2ElementType());
			}
			this_INT_6=RULE_INT
			{
				doneLeaf(this_INT_6);
			}
		)?
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
