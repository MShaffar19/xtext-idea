/*
 * generated by Xtext
 */
grammar PsiInternalActionTestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.testlanguages.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.testlanguages.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.testlanguages.idea.lang.ActionTestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.testlanguages.services.ActionTestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected ActionTestLanguageGrammarAccess grammarAccess;

	protected ActionTestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalActionTestLanguageParser(PsiBuilder builder, TokenStream input, ActionTestLanguageElementTypeProvider elementTypeProvider, ActionTestLanguageGrammarAccess grammarAccess) {
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
			markComposite(elementTypeProvider.getModel_ChildParserRuleCall_0ElementType());
		}
		this_Child_0=ruleChild
		{
			$current = $this_Child_0.current;
			doneComposite();
		}
		(
			(
				{
					precedeComposite(elementTypeProvider.getModel_ParentLeftAction_1_0ElementType());
					doneComposite();
					associateWithSemanticElement();
				}
			)
			(
				(
					{
						markComposite(elementTypeProvider.getModel_RightChildParserRuleCall_1_1_0ElementType());
					}
					lv_right_2_0=ruleChild
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
	)
;

//Entry rule entryRuleChild
entryRuleChild returns [Boolean current=false]:
	{ markComposite(elementTypeProvider.getChildElementType()); }
	iv_ruleChild=ruleChild
	{ $current=$iv_ruleChild.current; }
	EOF;

// Rule Child
ruleChild returns [Boolean current=false]
:
	(
		(
			{
				markLeaf(elementTypeProvider.getChild_NameIDTerminalRuleCall_0ElementType());
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
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;
