.class final enum Lme/writeily/editor/HighlighterPattern;
.super Ljava/lang/Enum;
.source "HighlighterPattern.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lme/writeily/editor/HighlighterPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lme/writeily/editor/HighlighterPattern;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum BOLD:Lme/writeily/editor/HighlighterPattern;

.field public static final enum HEADER:Lme/writeily/editor/HighlighterPattern;

.field public static final enum ITALICS:Lme/writeily/editor/HighlighterPattern;

.field public static final enum LINK:Lme/writeily/editor/HighlighterPattern;

.field public static final enum LIST:Lme/writeily/editor/HighlighterPattern;

.field public static final enum MONOSPACED:Lme/writeily/editor/HighlighterPattern;

.field public static final enum QUOTATION:Lme/writeily/editor/HighlighterPattern;

.field public static final enum STRIKETHROUGH:Lme/writeily/editor/HighlighterPattern;


# instance fields
.field private pattern:Ljava/util/regex/Pattern;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/editor/HighlighterPattern;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x16217cda5edfc542L    # -9.342260162499813E201

    const-string v2, "me/writeily/editor/HighlighterPattern"

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/editor/HighlighterPattern;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/editor/HighlighterPattern;->$jacocoInit()[Z

    move-result-object v0

    .line 6
    new-instance v1, Lme/writeily/editor/HighlighterPattern;

    const-string v2, "LIST"

    const/4 v3, 0x0

    const-string v4, "(\\n|^)\\s*(\\*|\\d+\\.)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lme/writeily/editor/HighlighterPattern;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;)V

    sput-object v1, Lme/writeily/editor/HighlighterPattern;->LIST:Lme/writeily/editor/HighlighterPattern;

    aput-boolean v5, v0, v6

    .line 7
    new-instance v1, Lme/writeily/editor/HighlighterPattern;

    const-string v2, "QUOTATION"

    const-string v3, "(\\n|^)>"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3}, Lme/writeily/editor/HighlighterPattern;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;)V

    sput-object v1, Lme/writeily/editor/HighlighterPattern;->QUOTATION:Lme/writeily/editor/HighlighterPattern;

    aput-boolean v5, v0, v7

    .line 8
    new-instance v1, Lme/writeily/editor/HighlighterPattern;

    const-string v2, "HEADER"

    const/4 v3, 0x2

    const-string v4, "(((\\n|^)#+.*?\\n)|((\\n|^).*?\\n(-|=)+))"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lme/writeily/editor/HighlighterPattern;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;)V

    sput-object v1, Lme/writeily/editor/HighlighterPattern;->HEADER:Lme/writeily/editor/HighlighterPattern;

    aput-boolean v5, v0, v8

    .line 9
    new-instance v1, Lme/writeily/editor/HighlighterPattern;

    const-string v2, "LINK"

    const/4 v3, 0x3

    const-string v4, "\\[([^\\[]+)\\]\\(([^\\)]+)\\)"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lme/writeily/editor/HighlighterPattern;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;)V

    sput-object v1, Lme/writeily/editor/HighlighterPattern;->LINK:Lme/writeily/editor/HighlighterPattern;

    aput-boolean v5, v0, v9

    .line 10
    new-instance v1, Lme/writeily/editor/HighlighterPattern;

    const-string v2, "STRIKETHROUGH"

    const-string v3, "\\~\\~(.*?)\\~\\~"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v1, v2, v6, v3}, Lme/writeily/editor/HighlighterPattern;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;)V

    sput-object v1, Lme/writeily/editor/HighlighterPattern;->STRIKETHROUGH:Lme/writeily/editor/HighlighterPattern;

    const/16 v1, 0x8

    aput-boolean v5, v0, v1

    .line 11
    new-instance v1, Lme/writeily/editor/HighlighterPattern;

    const-string v2, "MONOSPACED"

    const-string v3, "`(.*?)`"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v1, v2, v7, v3}, Lme/writeily/editor/HighlighterPattern;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;)V

    sput-object v1, Lme/writeily/editor/HighlighterPattern;->MONOSPACED:Lme/writeily/editor/HighlighterPattern;

    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    .line 12
    new-instance v1, Lme/writeily/editor/HighlighterPattern;

    const-string v2, "BOLD"

    const-string v3, "(\\*\\*|__)(.*?)\\1"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v1, v2, v8, v3}, Lme/writeily/editor/HighlighterPattern;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;)V

    sput-object v1, Lme/writeily/editor/HighlighterPattern;->BOLD:Lme/writeily/editor/HighlighterPattern;

    const/16 v1, 0xa

    aput-boolean v5, v0, v1

    .line 13
    new-instance v1, Lme/writeily/editor/HighlighterPattern;

    const-string v2, "ITALICS"

    const-string v3, "(\\*|_)(.*?)\\1"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-direct {v1, v2, v9, v3}, Lme/writeily/editor/HighlighterPattern;-><init>(Ljava/lang/String;ILjava/util/regex/Pattern;)V

    sput-object v1, Lme/writeily/editor/HighlighterPattern;->ITALICS:Lme/writeily/editor/HighlighterPattern;

    .line 5
    const/16 v1, 0x8

    new-array v1, v1, [Lme/writeily/editor/HighlighterPattern;

    const/4 v2, 0x0

    sget-object v3, Lme/writeily/editor/HighlighterPattern;->LIST:Lme/writeily/editor/HighlighterPattern;

    aput-object v3, v1, v2

    sget-object v2, Lme/writeily/editor/HighlighterPattern;->QUOTATION:Lme/writeily/editor/HighlighterPattern;

    aput-object v2, v1, v5

    const/4 v2, 0x2

    sget-object v3, Lme/writeily/editor/HighlighterPattern;->HEADER:Lme/writeily/editor/HighlighterPattern;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lme/writeily/editor/HighlighterPattern;->LINK:Lme/writeily/editor/HighlighterPattern;

    aput-object v3, v1, v2

    sget-object v2, Lme/writeily/editor/HighlighterPattern;->STRIKETHROUGH:Lme/writeily/editor/HighlighterPattern;

    aput-object v2, v1, v6

    sget-object v2, Lme/writeily/editor/HighlighterPattern;->MONOSPACED:Lme/writeily/editor/HighlighterPattern;

    aput-object v2, v1, v7

    sget-object v2, Lme/writeily/editor/HighlighterPattern;->BOLD:Lme/writeily/editor/HighlighterPattern;

    aput-object v2, v1, v8

    sget-object v2, Lme/writeily/editor/HighlighterPattern;->ITALICS:Lme/writeily/editor/HighlighterPattern;

    aput-object v2, v1, v9

    sput-object v1, Lme/writeily/editor/HighlighterPattern;->$VALUES:[Lme/writeily/editor/HighlighterPattern;

    const/16 v1, 0xb

    aput-boolean v5, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/regex/Pattern;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlighterPattern;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lme/writeily/editor/HighlighterPattern;->pattern:Ljava/util/regex/Pattern;

    .line 19
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lme/writeily/editor/HighlighterPattern;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/editor/HighlighterPattern;->$jacocoInit()[Z

    move-result-object v1

    .line 5
    const-class v0, Lme/writeily/editor/HighlighterPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lme/writeily/editor/HighlighterPattern;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lme/writeily/editor/HighlighterPattern;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlighterPattern;->$jacocoInit()[Z

    move-result-object v1

    .line 5
    sget-object v0, Lme/writeily/editor/HighlighterPattern;->$VALUES:[Lme/writeily/editor/HighlighterPattern;

    invoke-virtual {v0}, [Lme/writeily/editor/HighlighterPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/writeily/editor/HighlighterPattern;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method


# virtual methods
.method public getPattern()Ljava/util/regex/Pattern;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/editor/HighlighterPattern;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    iget-object v1, p0, Lme/writeily/editor/HighlighterPattern;->pattern:Ljava/util/regex/Pattern;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
