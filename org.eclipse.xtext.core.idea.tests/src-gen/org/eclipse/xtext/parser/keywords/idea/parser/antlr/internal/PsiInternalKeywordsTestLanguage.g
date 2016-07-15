/*
 * generated by Xtext
 */
grammar PsiInternalKeywordsTestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.parser.keywords.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.parser.keywords.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.parser.keywords.idea.lang.KeywordsTestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.keywords.services.KeywordsTestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected KeywordsTestLanguageGrammarAccess grammarAccess;

	protected KeywordsTestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalKeywordsTestLanguageParser(PsiBuilder builder, TokenStream input, KeywordsTestLanguageElementTypeProvider elementTypeProvider, KeywordsTestLanguageGrammarAccess grammarAccess) {
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
					markLeaf(elementTypeProvider.getModel_FirstFooBarKeyword_0_0ElementType());
				}
				lv_first_0_0='foo\\bar'
				{
					doneLeaf(lv_first_0_0);
				}
				{
					if (!$current) {
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
					markLeaf(elementTypeProvider.getModel_SecondFooKeyword_1_0ElementType());
				}
				lv_second_1_0='foo\\'
				{
					doneLeaf(lv_second_1_0);
				}
				{
					if (!$current) {
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
					markLeaf(elementTypeProvider.getModel_ThirdBarKeyword_2_0ElementType());
				}
				lv_third_2_0='\\bar'
				{
					doneLeaf(lv_third_2_0);
				}
				{
					if (!$current) {
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
					markLeaf(elementTypeProvider.getModel_ForthReverseSolidusKeyword_3_0ElementType());
				}
				lv_forth_3_0='\\'
				{
					doneLeaf(lv_forth_3_0);
				}
				{
					if (!$current) {
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
					markLeaf(elementTypeProvider.getModel_FifthAKeyword_4_0ElementType());
				}
				lv_fifth_4_0='"a"'
				{
					doneLeaf(lv_fifth_4_0);
				}
				{
					if (!$current) {
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
					markLeaf(elementTypeProvider.getModel_SixthBKeyword_5_0ElementType());
				}
				lv_sixth_5_0='\'b\''
				{
					doneLeaf(lv_sixth_5_0);
				}
				{
					if (!$current) {
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
					markLeaf(elementTypeProvider.getModel_SeventhCKeyword_6_0ElementType());
				}
				lv_seventh_6_0='\'c\''
				{
					doneLeaf(lv_seventh_6_0);
				}
				{
					if (!$current) {
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
					markLeaf(elementTypeProvider.getModel_EighthDKeyword_7_0ElementType());
				}
				lv_eighth_7_0='"d"'
				{
					doneLeaf(lv_eighth_7_0);
				}
				{
					if (!$current) {
						associateWithSemanticElement();
						$current = true;
					}
				}
			)
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
