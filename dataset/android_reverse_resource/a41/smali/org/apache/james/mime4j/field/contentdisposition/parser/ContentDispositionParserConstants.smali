.class public interface abstract Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserConstants;
.super Ljava/lang/Object;
.source "ContentDispositionParserConstants.java"


# static fields
.field public static final ANY:I = 0x16

.field public static final ATOKEN:I = 0x14

.field public static final COMMENT:I = 0x7

.field public static final DEFAULT:I = 0x0

.field public static final DIGITS:I = 0x13

.field public static final EOF:I = 0x0

.field public static final INCOMMENT:I = 0x1

.field public static final INQUOTEDSTRING:I = 0x3

.field public static final NESTED_COMMENT:I = 0x2

.field public static final QUOTEDPAIR:I = 0x15

.field public static final QUOTEDSTRING:I = 0x12

.field public static final WS:I = 0x5

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<EOF>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\"\\r\""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\"\\n\""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\";\""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\"=\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "<WS>"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\")\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "<token of kind 8>"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "<token of kind 10>"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "<token of kind 11>"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\")\""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<token of kind 14>"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\"\\\"\""

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "<token of kind 16>"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "<token of kind 17>"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\"\\\"\""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "<DIGITS>"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "<ATOKEN>"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "<QUOTEDPAIR>"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "<ANY>"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
