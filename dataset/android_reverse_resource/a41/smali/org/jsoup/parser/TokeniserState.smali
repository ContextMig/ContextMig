.class abstract enum Lorg/jsoup/parser/TokeniserState;
.super Ljava/lang/Enum;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jsoup/parser/TokeniserState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BogusComment:Lorg/jsoup/parser/TokeniserState;

.field public static final enum BogusDoctype:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CdataSection:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Comment:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEnd:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEndBang:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentEndDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum CommentStartDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Data:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Doctype:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

.field public static final enum EndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Rawtext:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum Rcdata:Lorg/jsoup/parser/TokeniserState;

.field public static final enum RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptData:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState;

.field public static final enum SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

.field public static final enum TagName:Lorg/jsoup/parser/TokeniserState;

.field public static final enum TagOpen:Lorg/jsoup/parser/TokeniserState;

.field private static final attributeDoubleValueCharsSorted:[C

.field private static final attributeNameCharsSorted:[C

.field private static final attributeSingleValueCharsSorted:[C

.field private static final attributeValueUnquoted:[C

.field private static final eof:C = '\uffff'

.field static final nullChar:C = '\u0000'

.field private static final replacementChar:C = '\ufffd'

.field private static final replacementStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/4 v3, 0x3

    .line 11
    new-instance v0, Lorg/jsoup/parser/TokeniserState$1;

    const-string v1, "Data"

    invoke-direct {v0, v1, v6}, Lorg/jsoup/parser/TokeniserState$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    .line 35
    new-instance v0, Lorg/jsoup/parser/TokeniserState$2;

    const-string v1, "CharacterReferenceInData"

    invoke-direct {v0, v1, v7}, Lorg/jsoup/parser/TokeniserState$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

    .line 41
    new-instance v0, Lorg/jsoup/parser/TokeniserState$3;

    const-string v1, "Rcdata"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    .line 66
    new-instance v0, Lorg/jsoup/parser/TokeniserState$4;

    const-string v1, "CharacterReferenceInRcdata"

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/TokeniserState$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

    .line 71
    new-instance v0, Lorg/jsoup/parser/TokeniserState$5;

    const-string v1, "Rawtext"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    .line 76
    new-instance v0, Lorg/jsoup/parser/TokeniserState$6;

    const-string v1, "ScriptData"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    .line 81
    new-instance v0, Lorg/jsoup/parser/TokeniserState$7;

    const-string v1, "PLAINTEXT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    .line 99
    new-instance v0, Lorg/jsoup/parser/TokeniserState$8;

    const-string v1, "TagOpen"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 125
    new-instance v0, Lorg/jsoup/parser/TokeniserState$9;

    const-string v1, "EndTagOpen"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->EndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 143
    new-instance v0, Lorg/jsoup/parser/TokeniserState$10;

    const-string v1, "TagName"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->TagName:Lorg/jsoup/parser/TokeniserState;

    .line 176
    new-instance v0, Lorg/jsoup/parser/TokeniserState$11;

    const-string v1, "RcdataLessthanSign"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 195
    new-instance v0, Lorg/jsoup/parser/TokeniserState$12;

    const-string v1, "RCDATAEndTagOpen"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$12;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 208
    new-instance v0, Lorg/jsoup/parser/TokeniserState$13;

    const-string v1, "RCDATAEndTagName"

    invoke-direct {v0, v1, v4}, Lorg/jsoup/parser/TokeniserState$13;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 254
    new-instance v0, Lorg/jsoup/parser/TokeniserState$14;

    const-string v1, "RawtextLessthanSign"

    invoke-direct {v0, v1, v5}, Lorg/jsoup/parser/TokeniserState$14;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 265
    new-instance v0, Lorg/jsoup/parser/TokeniserState$15;

    const-string v1, "RawtextEndTagOpen"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$15;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 270
    new-instance v0, Lorg/jsoup/parser/TokeniserState$16;

    const-string v1, "RawtextEndTagName"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$16;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 275
    new-instance v0, Lorg/jsoup/parser/TokeniserState$17;

    const-string v1, "ScriptDataLessthanSign"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$17;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 293
    new-instance v0, Lorg/jsoup/parser/TokeniserState$18;

    const-string v1, "ScriptDataEndTagOpen"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$18;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 298
    new-instance v0, Lorg/jsoup/parser/TokeniserState$19;

    const-string v1, "ScriptDataEndTagName"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$19;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 303
    new-instance v0, Lorg/jsoup/parser/TokeniserState$20;

    const-string v1, "ScriptDataEscapeStart"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$20;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

    .line 313
    new-instance v0, Lorg/jsoup/parser/TokeniserState$21;

    const-string v1, "ScriptDataEscapeStartDash"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$21;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState;

    .line 323
    new-instance v0, Lorg/jsoup/parser/TokeniserState$22;

    const-string v1, "ScriptDataEscaped"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$22;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

    .line 350
    new-instance v0, Lorg/jsoup/parser/TokeniserState$23;

    const-string v1, "ScriptDataEscapedDash"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$23;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState;

    .line 378
    new-instance v0, Lorg/jsoup/parser/TokeniserState$24;

    const-string v1, "ScriptDataEscapedDashDash"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$24;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    .line 409
    new-instance v0, Lorg/jsoup/parser/TokeniserState$25;

    const-string v1, "ScriptDataEscapedLessthanSign"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$25;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 425
    new-instance v0, Lorg/jsoup/parser/TokeniserState$26;

    const-string v1, "ScriptDataEscapedEndTagOpen"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$26;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    .line 438
    new-instance v0, Lorg/jsoup/parser/TokeniserState$27;

    const-string v1, "ScriptDataEscapedEndTagName"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$27;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState;

    .line 443
    new-instance v0, Lorg/jsoup/parser/TokeniserState$28;

    const-string v1, "ScriptDataDoubleEscapeStart"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$28;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

    .line 448
    new-instance v0, Lorg/jsoup/parser/TokeniserState$29;

    const-string v1, "ScriptDataDoubleEscaped"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$29;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    .line 475
    new-instance v0, Lorg/jsoup/parser/TokeniserState$30;

    const-string v1, "ScriptDataDoubleEscapedDash"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$30;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

    .line 502
    new-instance v0, Lorg/jsoup/parser/TokeniserState$31;

    const-string v1, "ScriptDataDoubleEscapedDashDash"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$31;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    .line 532
    new-instance v0, Lorg/jsoup/parser/TokeniserState$32;

    const-string v1, "ScriptDataDoubleEscapedLessthanSign"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$32;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    .line 543
    new-instance v0, Lorg/jsoup/parser/TokeniserState$33;

    const-string v1, "ScriptDataDoubleEscapeEnd"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$33;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState;

    .line 548
    new-instance v0, Lorg/jsoup/parser/TokeniserState$34;

    const-string v1, "BeforeAttributeName"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$34;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 592
    new-instance v0, Lorg/jsoup/parser/TokeniserState$35;

    const-string v1, "AttributeName"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$35;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 634
    new-instance v0, Lorg/jsoup/parser/TokeniserState$36;

    const-string v1, "AfterAttributeName"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$36;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

    .line 679
    new-instance v0, Lorg/jsoup/parser/TokeniserState$37;

    const-string v1, "BeforeAttributeValue"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$37;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

    .line 728
    new-instance v0, Lorg/jsoup/parser/TokeniserState$38;

    const-string v1, "AttributeValue_doubleQuoted"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$38;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 760
    new-instance v0, Lorg/jsoup/parser/TokeniserState$39;

    const-string v1, "AttributeValue_singleQuoted"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$39;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 792
    new-instance v0, Lorg/jsoup/parser/TokeniserState$40;

    const-string v1, "AttributeValue_unquoted"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$40;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

    .line 840
    new-instance v0, Lorg/jsoup/parser/TokeniserState$41;

    const-string v1, "AfterAttributeValue_quoted"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$41;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

    .line 870
    new-instance v0, Lorg/jsoup/parser/TokeniserState$42;

    const-string v1, "SelfClosingStartTag"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$42;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    .line 890
    new-instance v0, Lorg/jsoup/parser/TokeniserState$43;

    const-string v1, "BogusComment"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$43;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BogusComment:Lorg/jsoup/parser/TokeniserState;

    .line 903
    new-instance v0, Lorg/jsoup/parser/TokeniserState$44;

    const-string v1, "MarkupDeclarationOpen"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$44;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

    .line 921
    new-instance v0, Lorg/jsoup/parser/TokeniserState$45;

    const-string v1, "CommentStart"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$45;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CommentStart:Lorg/jsoup/parser/TokeniserState;

    .line 949
    new-instance v0, Lorg/jsoup/parser/TokeniserState$46;

    const-string v1, "CommentStartDash"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$46;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CommentStartDash:Lorg/jsoup/parser/TokeniserState;

    .line 977
    new-instance v0, Lorg/jsoup/parser/TokeniserState$47;

    const-string v1, "Comment"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$47;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    .line 999
    new-instance v0, Lorg/jsoup/parser/TokeniserState$48;

    const-string v1, "CommentEndDash"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$48;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CommentEndDash:Lorg/jsoup/parser/TokeniserState;

    .line 1022
    new-instance v0, Lorg/jsoup/parser/TokeniserState$49;

    const-string v1, "CommentEnd"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$49;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CommentEnd:Lorg/jsoup/parser/TokeniserState;

    .line 1055
    new-instance v0, Lorg/jsoup/parser/TokeniserState$50;

    const-string v1, "CommentEndBang"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$50;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CommentEndBang:Lorg/jsoup/parser/TokeniserState;

    .line 1083
    new-instance v0, Lorg/jsoup/parser/TokeniserState$51;

    const-string v1, "Doctype"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$51;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->Doctype:Lorg/jsoup/parser/TokeniserState;

    .line 1110
    new-instance v0, Lorg/jsoup/parser/TokeniserState$52;

    const-string v1, "BeforeDoctypeName"

    const/16 v2, 0x33

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$52;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 1145
    new-instance v0, Lorg/jsoup/parser/TokeniserState$53;

    const-string v1, "DoctypeName"

    const/16 v2, 0x34

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$53;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 1180
    new-instance v0, Lorg/jsoup/parser/TokeniserState$54;

    const-string v1, "AfterDoctypeName"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$54;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

    .line 1208
    new-instance v0, Lorg/jsoup/parser/TokeniserState$55;

    const-string v1, "AfterDoctypePublicKeyword"

    const/16 v2, 0x36

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$55;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

    .line 1248
    new-instance v0, Lorg/jsoup/parser/TokeniserState$56;

    const-string v1, "BeforeDoctypePublicIdentifier"

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$56;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1285
    new-instance v0, Lorg/jsoup/parser/TokeniserState$57;

    const-string v1, "DoctypePublicIdentifier_doubleQuoted"

    const/16 v2, 0x38

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$57;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1313
    new-instance v0, Lorg/jsoup/parser/TokeniserState$58;

    const-string v1, "DoctypePublicIdentifier_singleQuoted"

    const/16 v2, 0x39

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$58;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1341
    new-instance v0, Lorg/jsoup/parser/TokeniserState$59;

    const-string v1, "AfterDoctypePublicIdentifier"

    const/16 v2, 0x3a

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$59;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1379
    new-instance v0, Lorg/jsoup/parser/TokeniserState$60;

    const-string v1, "BetweenDoctypePublicAndSystemIdentifiers"

    const/16 v2, 0x3b

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$60;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState;

    .line 1416
    new-instance v0, Lorg/jsoup/parser/TokeniserState$61;

    const-string v1, "AfterDoctypeSystemKeyword"

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$61;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

    .line 1456
    new-instance v0, Lorg/jsoup/parser/TokeniserState$62;

    const-string v1, "BeforeDoctypeSystemIdentifier"

    const/16 v2, 0x3d

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$62;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1493
    new-instance v0, Lorg/jsoup/parser/TokeniserState$63;

    const-string v1, "DoctypeSystemIdentifier_doubleQuoted"

    const/16 v2, 0x3e

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$63;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1521
    new-instance v0, Lorg/jsoup/parser/TokeniserState$64;

    const-string v1, "DoctypeSystemIdentifier_singleQuoted"

    const/16 v2, 0x3f

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$64;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    .line 1549
    new-instance v0, Lorg/jsoup/parser/TokeniserState$65;

    const-string v1, "AfterDoctypeSystemIdentifier"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$65;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    .line 1576
    new-instance v0, Lorg/jsoup/parser/TokeniserState$66;

    const-string v1, "BogusDoctype"

    const/16 v2, 0x41

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$66;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    .line 1594
    new-instance v0, Lorg/jsoup/parser/TokeniserState$67;

    const-string v1, "CdataSection"

    const/16 v2, 0x42

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/TokeniserState$67;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->CdataSection:Lorg/jsoup/parser/TokeniserState;

    .line 10
    const/16 v0, 0x43

    new-array v0, v0, [Lorg/jsoup/parser/TokeniserState;

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInData:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v7

    const/4 v1, 0x2

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->CharacterReferenceInRcdata:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v3

    const/4 v1, 0x4

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptData:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->PLAINTEXT:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->TagOpen:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->EndTagOpen:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->TagName:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->RcdataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->RCDATAEndTagName:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jsoup/parser/TokeniserState;->RawtextLessthanSign:Lorg/jsoup/parser/TokeniserState;

    aput-object v1, v0, v5

    const/16 v1, 0xe

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->RawtextEndTagName:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataLessthanSign:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEndTagName:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStart:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapeStartDash:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscaped:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDash:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagOpen:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataEscapedEndTagName:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeStart:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscaped:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedDashDash:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->ScriptDataDoubleEscapeEnd:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->AttributeName:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->AfterAttributeName:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeValue:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->AttributeValue_unquoted:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->AfterAttributeValue_quoted:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->BogusComment:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->MarkupDeclarationOpen:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->CommentStart:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->CommentStartDash:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->Comment:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->CommentEndDash:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->CommentEnd:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->CommentEndBang:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->Doctype:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeName:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->DoctypeName:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeName:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicKeyword:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->DoctypePublicIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->AfterDoctypePublicIdentifier:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->BetweenDoctypePublicAndSystemIdentifiers:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemKeyword:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->BeforeDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_doubleQuoted:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->DoctypeSystemIdentifier_singleQuoted:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->AfterDoctypeSystemIdentifier:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->BogusDoctype:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    sget-object v2, Lorg/jsoup/parser/TokeniserState;->CdataSection:Lorg/jsoup/parser/TokeniserState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->$VALUES:[Lorg/jsoup/parser/TokeniserState;

    .line 1607
    new-array v0, v3, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeSingleValueCharsSorted:[C

    .line 1608
    new-array v0, v3, [C

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeDoubleValueCharsSorted:[C

    .line 1609
    new-array v0, v4, [C

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    .line 1610
    new-array v0, v5, [C

    fill-array-data v0, :array_3

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    .line 1613
    const v0, 0xfffd

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    .line 1617
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeSingleValueCharsSorted:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 1618
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeDoubleValueCharsSorted:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 1619
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 1620
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 1621
    return-void

    .line 1607
    :array_0
    .array-data 2
        0x27s
        0x26s
        0x0s
    .end array-data

    .line 1608
    nop

    :array_1
    .array-data 2
        0x22s
        0x26s
        0x0s
    .end array-data

    .line 1609
    nop

    :array_2
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x2fs
        0x3ds
        0x3es
        0x0s
        0x22s
        0x27s
        0x3cs
    .end array-data

    .line 1610
    :array_3
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
        0x26s
        0x3es
        0x0s
        0x22s
        0x27s
        0x3cs
        0x3ds
        0x60s
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jsoup/parser/TokeniserState$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/jsoup/parser/TokeniserState$1;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/parser/Tokeniser;
    .param p1, "x1"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 10
    invoke-static {p0, p1}, Lorg/jsoup/parser/TokeniserState;->readCharRef(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$1000()[C
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeValueUnquoted:[C

    return-object v0
.end method

.method static synthetic access$200(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/parser/Tokeniser;
    .param p1, "x1"    # Lorg/jsoup/parser/CharacterReader;
    .param p2, "x2"    # Lorg/jsoup/parser/TokeniserState;
    .param p3, "x3"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->readData(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->replacementStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/parser/Tokeniser;
    .param p1, "x1"    # Lorg/jsoup/parser/CharacterReader;
    .param p2, "x2"    # Lorg/jsoup/parser/TokeniserState;
    .param p3, "x3"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->readEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$500(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/parser/Tokeniser;
    .param p1, "x1"    # Lorg/jsoup/parser/CharacterReader;
    .param p2, "x2"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 10
    invoke-static {p0, p1, p2}, Lorg/jsoup/parser/TokeniserState;->handleDataEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$600(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 0
    .param p0, "x0"    # Lorg/jsoup/parser/Tokeniser;
    .param p1, "x1"    # Lorg/jsoup/parser/CharacterReader;
    .param p2, "x2"    # Lorg/jsoup/parser/TokeniserState;
    .param p3, "x3"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 10
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/parser/TokeniserState;->handleDataDoubleEscapeTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V

    return-void
.end method

.method static synthetic access$700()[C
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeNameCharsSorted:[C

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeDoubleValueCharsSorted:[C

    return-object v0
.end method

.method static synthetic access$900()[C
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->attributeSingleValueCharsSorted:[C

    return-object v0
.end method

.method private static handleDataDoubleEscapeTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 4
    .param p0, "t"    # Lorg/jsoup/parser/Tokeniser;
    .param p1, "r"    # Lorg/jsoup/parser/CharacterReader;
    .param p2, "primary"    # Lorg/jsoup/parser/TokeniserState;
    .param p3, "fallback"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 1707
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1708
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object v1

    .line 1709
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 1733
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 1714
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    .line 1715
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1730
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->unconsume()V

    .line 1731
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1723
    :sswitch_0
    iget-object v2, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "script"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1724
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1727
    :goto_1
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    goto :goto_0

    .line 1726
    :cond_1
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 1715
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleDataEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;)V
    .locals 5
    .param p0, "t"    # Lorg/jsoup/parser/Tokeniser;
    .param p1, "r"    # Lorg/jsoup/parser/CharacterReader;
    .param p2, "elseTransition"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 1628
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1629
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object v1

    .line 1630
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/jsoup/parser/Tokeniser;->tagPending:Lorg/jsoup/parser/Token$Tag;

    invoke-virtual {v3, v1}, Lorg/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 1631
    iget-object v3, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1665
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    const/4 v2, 0x0

    .line 1636
    .local v2, "needsExitTransition":Z
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1637
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    .line 1638
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1654
    iget-object v3, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1655
    const/4 v2, 0x1

    .line 1661
    .end local v0    # "c":C
    :goto_1
    if-eqz v2, :cond_0

    .line 1662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 1663
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1644
    .restart local v0    # "c":C
    :sswitch_0
    sget-object v3, Lorg/jsoup/parser/TokeniserState;->BeforeAttributeName:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p0, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 1647
    :sswitch_1
    sget-object v3, Lorg/jsoup/parser/TokeniserState;->SelfClosingStartTag:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p0, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 1650
    :sswitch_2
    invoke-virtual {p0}, Lorg/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 1651
    sget-object v3, Lorg/jsoup/parser/TokeniserState;->Data:Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {p0, v3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_1

    .line 1658
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 1638
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2f -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private static readCharRef(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/TokeniserState;)V
    .locals 3
    .param p0, "t"    # Lorg/jsoup/parser/Tokeniser;
    .param p1, "advance"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 1688
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    move-result-object v0

    .line 1689
    .local v0, "c":[I
    if-nez v0, :cond_0

    .line 1690
    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    .line 1693
    :goto_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1694
    return-void

    .line 1692
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit([I)V

    goto :goto_0
.end method

.method private static readData(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 2
    .param p0, "t"    # Lorg/jsoup/parser/Tokeniser;
    .param p1, "r"    # Lorg/jsoup/parser/CharacterReader;
    .param p2, "current"    # Lorg/jsoup/parser/TokeniserState;
    .param p3, "advance"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 1668
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->current()C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1681
    const/4 v1, 0x2

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object v0

    .line 1682
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 1685
    .end local v0    # "data":Ljava/lang/String;
    :goto_0
    return-void

    .line 1670
    :sswitch_0
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->advanceTransition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0

    .line 1673
    :sswitch_1
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->error(Lorg/jsoup/parser/TokeniserState;)V

    .line 1674
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->advance()V

    .line 1675
    const v1, 0xfffd

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/Tokeniser;->emit(C)V

    goto :goto_0

    .line 1678
    :sswitch_2
    new-instance v1, Lorg/jsoup/parser/Token$EOF;

    invoke-direct {v1}, Lorg/jsoup/parser/Token$EOF;-><init>()V

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/Tokeniser;->emit(Lorg/jsoup/parser/Token;)V

    goto :goto_0

    .line 1668
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3c -> :sswitch_0
        0xffff -> :sswitch_2
    .end sparse-switch

    .line 1681
    :array_0
    .array-data 2
        0x3cs
        0x0s
    .end array-data
.end method

.method private static readEndTag(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;Lorg/jsoup/parser/TokeniserState;Lorg/jsoup/parser/TokeniserState;)V
    .locals 1
    .param p0, "t"    # Lorg/jsoup/parser/Tokeniser;
    .param p1, "r"    # Lorg/jsoup/parser/CharacterReader;
    .param p2, "a"    # Lorg/jsoup/parser/TokeniserState;
    .param p3, "b"    # Lorg/jsoup/parser/TokeniserState;

    .prologue
    .line 1697
    invoke-virtual {p1}, Lorg/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->createTagPending(Z)Lorg/jsoup/parser/Token$Tag;

    .line 1699
    invoke-virtual {p0, p2}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    .line 1704
    :goto_0
    return-void

    .line 1701
    :cond_0
    const-string v0, "</"

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 1702
    invoke-virtual {p0, p3}, Lorg/jsoup/parser/Tokeniser;->transition(Lorg/jsoup/parser/TokeniserState;)V

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/TokeniserState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lorg/jsoup/parser/TokeniserState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/TokeniserState;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/parser/TokeniserState;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lorg/jsoup/parser/TokeniserState;->$VALUES:[Lorg/jsoup/parser/TokeniserState;

    invoke-virtual {v0}, [Lorg/jsoup/parser/TokeniserState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/TokeniserState;

    return-object v0
.end method


# virtual methods
.method abstract read(Lorg/jsoup/parser/Tokeniser;Lorg/jsoup/parser/CharacterReader;)V
.end method
