/*
 * generated by Xtext
 */
grammar PsiInternalUnassignedRuleCallTestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.xtext.ecoreInference.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.xtext.ecoreInference.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.xtext.ecoreInference.idea.lang.UnassignedRuleCallTestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.xtext.ecoreInference.services.UnassignedRuleCallTestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected UnassignedRuleCallTestLanguageGrammarAccess grammarAccess;

	protected UnassignedRuleCallTestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalUnassignedRuleCallTestLanguageParser(PsiBuilder builder, TokenStream input, UnassignedRuleCallTestLanguageElementTypeProvider elementTypeProvider, UnassignedRuleCallTestLanguageGrammarAccess grammarAccess) {
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
		{
			markLeaf(elementTypeProvider.getModel_ModelKeyword_0ElementType());
		}
		otherlv_0='model'
		{
			doneLeaf(otherlv_0);
		}
		(
			{
				markLeaf(elementTypeProvider.getModel_INTTerminalRuleCall_1ElementType());
			}
			this_INT_1=RULE_INT
			{
				doneLeaf(this_INT_1);
			}
		)+
		(
			(
				{
					markComposite(elementTypeProvider.getModel_ModelFeaturesModelFeaturesParserRuleCall_2_0ElementType());
				}
				lv_modelFeatures_2_0=ruleModelFeatures
				{
					doneComposite();
					if(!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
	)
;

//Entry rule entryRuleModelFeatures
entryRuleModelFeatures returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getModelFeaturesElementType()); }
	iv_ruleModelFeatures=ruleModelFeatures
	{ $current=$iv_ruleModelFeatures.current; }
	EOF;

// Rule ModelFeatures
ruleModelFeatures returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getModelFeatures_FeatureKeyword_0ElementType());
		}
		otherlv_0='feature'
		{
			doneLeaf(otherlv_0);
		}
		(
			(
				{
					markLeaf(elementTypeProvider.getModelFeatures_NameIDTerminalRuleCall_1_0ElementType());
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
			markComposite(elementTypeProvider.getModelFeatures_DataTypeRuleParserRuleCall_2ElementType());
		}
		ruleDataTypeRule
		{
			doneComposite();
		}
		{
			markLeaf(elementTypeProvider.getModelFeatures_SemicolonKeyword_3ElementType());
		}
		otherlv_3=';'
		{
			doneLeaf(otherlv_3);
		}
	)
;

//Entry rule entryRuleDataTypeRule
entryRuleDataTypeRule returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getDataTypeRuleElementType()); }
	iv_ruleDataTypeRule=ruleDataTypeRule
	{ $current=$iv_ruleDataTypeRule.current; }
	EOF;

// Rule DataTypeRule
ruleDataTypeRule returns [Boolean current=false]
:
	(
		{
			markLeaf(elementTypeProvider.getDataTypeRule_INTTerminalRuleCall_0ElementType());
		}
		this_INT_0=RULE_INT
		{
			doneLeaf(this_INT_0);
		}
		{
			markLeaf(elementTypeProvider.getDataTypeRule_KeywordKeyword_1ElementType());
		}
		kw='keyword'
		{
			doneLeaf(kw);
		}
		{
			markLeaf(elementTypeProvider.getDataTypeRule_INTTerminalRuleCall_2ElementType());
		}
		this_INT_2=RULE_INT
		{
			doneLeaf(this_INT_2);
		}
		(
			{
				markLeaf(elementTypeProvider.getDataTypeRule_STRINGTerminalRuleCall_3ElementType());
			}
			this_STRING_3=RULE_STRING
			{
				doneLeaf(this_STRING_3);
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
