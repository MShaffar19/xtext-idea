/*
 * generated by Xtext
 */
grammar PsiInternalEcoreTerminalsTestLanguage;

options {
	superClass=AbstractPsiAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.parser.terminalrules.idea.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.parser.terminalrules.idea.parser.antlr.internal;

import org.eclipse.xtext.idea.parser.AbstractPsiAntlrParser;
import org.eclipse.xtext.parser.terminalrules.idea.lang.EcoreTerminalsTestLanguageElementTypeProvider;
import org.eclipse.xtext.idea.parser.TokenTypeProvider;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.terminalrules.services.EcoreTerminalsTestLanguageGrammarAccess;

import com.intellij.lang.PsiBuilder;
}

@parser::members {

	protected EcoreTerminalsTestLanguageGrammarAccess grammarAccess;

	protected EcoreTerminalsTestLanguageElementTypeProvider elementTypeProvider;

	public PsiInternalEcoreTerminalsTestLanguageParser(PsiBuilder builder, TokenStream input, EcoreTerminalsTestLanguageElementTypeProvider elementTypeProvider, EcoreTerminalsTestLanguageGrammarAccess grammarAccess) {
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
			{
				markLeaf(elementTypeProvider.getModel_IntKeyword_0_0ElementType());
			}
			otherlv_0='int'
			{
				doneLeaf(otherlv_0);
			}
			(
				(
					{
						markLeaf(elementTypeProvider.getModel_IntValuesEINTTerminalRuleCall_0_1_0ElementType());
					}
					lv_intValues_1_0=RULE_EINT
					{
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						doneLeaf(lv_intValues_1_0);
					}
				)
			)
		)
		    |
		(
			{
				markLeaf(elementTypeProvider.getModel_DoubleKeyword_1_0ElementType());
			}
			otherlv_2='double'
			{
				doneLeaf(otherlv_2);
			}
			(
				(
					{
						markLeaf(elementTypeProvider.getModel_DoubleValuesEDOUBLETerminalRuleCall_1_1_0ElementType());
					}
					lv_doubleValues_3_0=RULE_EDOUBLE
					{
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						doneLeaf(lv_doubleValues_3_0);
					}
				)
			)
		)
		    |
		(
			{
				markLeaf(elementTypeProvider.getModel_DateKeyword_2_0ElementType());
			}
			otherlv_4='date'
			{
				doneLeaf(otherlv_4);
			}
			(
				(
					{
						markLeaf(elementTypeProvider.getModel_DateValuesEDATETerminalRuleCall_2_1_0ElementType());
					}
					lv_dateValues_5_0=RULE_EDATE
					{
						if(!$current) {
							associateWithSemanticElement();
							$current = true;
						}
					}
					{
						doneLeaf(lv_dateValues_5_0);
					}
				)
			)
		)
	)*
;

RULE_EDOUBLE : ('.' ('0'..'9')+|('0'..'9')+ '.' ('0'..'9')*) (('E'|'e') ('-'|'+'?) ('0'..'9')+)?;

RULE_EDATE : '0'..'9' '0'..'9' '0'..'9' '0'..'9' '-' '0'..'9' '0'..'9' '-' '0'..'9' '0'..'9' 'T' '0'..'9' '0'..'9' ':' '0'..'9' '0'..'9' ':' '0'..'9' '0'..'9' '.' '0'..'9' '0'..'9' '0'..'9' ('+'|'-') '0'..'9' '0'..'9' '0'..'9' '0'..'9';

RULE_EINT : '-'? ('0'..'9')+;

RULE_WS : (' '|'\t'|'\r'|'\n')+;
