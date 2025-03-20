.class Lme/writeily/editor/Highlighter;
.super Ljava/lang/Object;
.source "Highlighter.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final colors:Lme/writeily/editor/HighlighterColors;

.field final fontSize:Ljava/lang/Integer;

.field final fontType:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/editor/Highlighter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x1e9866b81875a4a9L    # -1.6588868330836167E161

    const-string v2, "me/writeily/editor/Highlighter"

    const/16 v3, 0x21

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/editor/Highlighter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lme/writeily/editor/HighlighterColors;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/editor/Highlighter;->$jacocoInit()[Z

    move-result-object v0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lme/writeily/editor/Highlighter;->colors:Lme/writeily/editor/HighlighterColors;

    .line 25
    iput-object p2, p0, Lme/writeily/editor/Highlighter;->fontType:Ljava/lang/String;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 26
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lme/writeily/editor/Highlighter;->fontSize:Ljava/lang/Integer;

    .line 27
    aput-boolean v2, v0, v2

    return-void
.end method

.method private clearSpanType(Landroid/text/Editable;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/text/style/CharacterStyle;",
            ">(",
            "Landroid/text/Editable;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/editor/Highlighter;->$jacocoInit()[Z

    move-result-object v3

    .line 118
    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {p1, v2, v4, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    .line 120
    .local v1, "spans":[Landroid/text/style/CharacterStyle;
    array-length v0, v1

    const/16 v2, 0x1d

    aput-boolean v5, v3, v2

    move v2, v0

    :goto_0
    add-int/lit8 v0, v2, -0x1

    .local v0, "n":I
    if-lez v2, :cond_0

    const/16 v2, 0x1e

    aput-boolean v5, v3, v2

    .line 121
    aget-object v2, v1, v0

    invoke-interface {p1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    const/16 v2, 0x1f

    aput-boolean v5, v3, v2

    move v2, v0

    goto :goto_0

    .line 123
    :cond_0
    const/16 v2, 0x20

    aput-boolean v5, v3, v2

    return-void
.end method

.method private clearSpans(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/editor/Highlighter;->$jacocoInit()[Z

    move-result-object v0

    .line 109
    const-class v1, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {p0, p1, v1}, Lme/writeily/editor/Highlighter;->clearSpanType(Landroid/text/Editable;Ljava/lang/Class;)V

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    .line 110
    const-class v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, p1, v1}, Lme/writeily/editor/Highlighter;->clearSpanType(Landroid/text/Editable;Ljava/lang/Class;)V

    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    .line 111
    const-class v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p0, p1, v1}, Lme/writeily/editor/Highlighter;->clearSpanType(Landroid/text/Editable;Ljava/lang/Class;)V

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    .line 112
    const-class v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p0, p1, v1}, Lme/writeily/editor/Highlighter;->clearSpanType(Landroid/text/Editable;Ljava/lang/Class;)V

    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    .line 113
    const-class v1, Landroid/text/style/StyleSpan;

    invoke-direct {p0, p1, v1}, Lme/writeily/editor/Highlighter;->clearSpanType(Landroid/text/Editable;Ljava/lang/Class;)V

    .line 114
    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createColorSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;I)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/Highlighter;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    new-instance v1, Lme/writeily/editor/Highlighter$4;

    invoke-direct {v1, p0, p3}, Lme/writeily/editor/Highlighter$4;-><init>(Lme/writeily/editor/Highlighter;I)V

    invoke-direct {p0, p1, p2, v1}, Lme/writeily/editor/Highlighter;->createSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;Lme/writeily/editor/SpanCreator;)V

    .line 97
    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createHeaderSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;I)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/Highlighter;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    new-instance v1, Lme/writeily/editor/HeaderSpanCreator;

    invoke-direct {v1, p0, p1, p3}, Lme/writeily/editor/HeaderSpanCreator;-><init>(Lme/writeily/editor/Highlighter;Landroid/text/Editable;I)V

    invoke-direct {p0, p1, p2, v1}, Lme/writeily/editor/Highlighter;->createSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;Lme/writeily/editor/SpanCreator;)V

    .line 56
    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createMonospaceSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/Highlighter;->$jacocoInit()[Z

    move-result-object v0

    .line 60
    new-instance v1, Lme/writeily/editor/Highlighter$1;

    invoke-direct {v1, p0}, Lme/writeily/editor/Highlighter$1;-><init>(Lme/writeily/editor/Highlighter;)V

    invoke-direct {p0, p1, p2, v1}, Lme/writeily/editor/Highlighter;->createSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;Lme/writeily/editor/SpanCreator;)V

    .line 67
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;Lme/writeily/editor/SpanCreator;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/editor/Highlighter;->$jacocoInit()[Z

    move-result-object v0

    .line 102
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/16 v2, 0x14

    aput-boolean v6, v0, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x15

    aput-boolean v6, v0, v2

    .line 103
    invoke-interface {p3, v1}, Lme/writeily/editor/SpanCreator;->create(Ljava/util/regex/Matcher;)Landroid/text/ParcelableSpan;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    const/16 v2, 0x16

    aput-boolean v6, v0, v2

    goto :goto_0

    .line 105
    :cond_0
    const/16 v1, 0x17

    aput-boolean v6, v0, v1

    return-void
.end method

.method private createSpanWithStrikeThroughForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/Highlighter;->$jacocoInit()[Z

    move-result-object v0

    .line 71
    new-instance v1, Lme/writeily/editor/Highlighter$2;

    invoke-direct {v1, p0}, Lme/writeily/editor/Highlighter$2;-><init>(Lme/writeily/editor/Highlighter;)V

    invoke-direct {p0, p1, p2, v1}, Lme/writeily/editor/Highlighter;->createSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;Lme/writeily/editor/SpanCreator;)V

    .line 77
    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private createStyleSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;I)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/Highlighter;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    new-instance v1, Lme/writeily/editor/Highlighter$3;

    invoke-direct {v1, p0, p3}, Lme/writeily/editor/Highlighter$3;-><init>(Lme/writeily/editor/Highlighter;I)V

    invoke-direct {p0, p1, p2, v1}, Lme/writeily/editor/Highlighter;->createSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;Lme/writeily/editor/SpanCreator;)V

    .line 87
    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run(Landroid/text/Editable;)Landroid/text/Editable;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/editor/Highlighter;->$jacocoInit()[Z

    move-result-object v0

    .line 31
    :try_start_0
    invoke-direct {p0, p1}, Lme/writeily/editor/Highlighter;->clearSpans(Landroid/text/Editable;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 33
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 37
    sget-object v1, Lme/writeily/editor/HighlighterPattern;->HEADER:Lme/writeily/editor/HighlighterPattern;

    invoke-virtual {v1}, Lme/writeily/editor/HighlighterPattern;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/editor/Highlighter;->colors:Lme/writeily/editor/HighlighterColors;

    invoke-interface {v2}, Lme/writeily/editor/HighlighterColors;->getHeaderColor()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lme/writeily/editor/Highlighter;->createHeaderSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;I)V

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 38
    sget-object v1, Lme/writeily/editor/HighlighterPattern;->LINK:Lme/writeily/editor/HighlighterPattern;

    invoke-virtual {v1}, Lme/writeily/editor/HighlighterPattern;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/editor/Highlighter;->colors:Lme/writeily/editor/HighlighterColors;

    invoke-interface {v2}, Lme/writeily/editor/HighlighterColors;->getLinkColor()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lme/writeily/editor/Highlighter;->createColorSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;I)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 39
    sget-object v1, Lme/writeily/editor/HighlighterPattern;->LIST:Lme/writeily/editor/HighlighterPattern;

    invoke-virtual {v1}, Lme/writeily/editor/HighlighterPattern;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/editor/Highlighter;->colors:Lme/writeily/editor/HighlighterColors;

    invoke-interface {v2}, Lme/writeily/editor/HighlighterColors;->getListColor()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lme/writeily/editor/Highlighter;->createColorSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;I)V

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 40
    sget-object v1, Lme/writeily/editor/HighlighterPattern;->BOLD:Lme/writeily/editor/HighlighterPattern;

    invoke-virtual {v1}, Lme/writeily/editor/HighlighterPattern;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lme/writeily/editor/Highlighter;->createStyleSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;I)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 41
    sget-object v1, Lme/writeily/editor/HighlighterPattern;->ITALICS:Lme/writeily/editor/HighlighterPattern;

    invoke-virtual {v1}, Lme/writeily/editor/HighlighterPattern;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2}, Lme/writeily/editor/Highlighter;->createStyleSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;I)V

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 42
    sget-object v1, Lme/writeily/editor/HighlighterPattern;->QUOTATION:Lme/writeily/editor/HighlighterPattern;

    invoke-virtual {v1}, Lme/writeily/editor/HighlighterPattern;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lme/writeily/editor/Highlighter;->colors:Lme/writeily/editor/HighlighterColors;

    invoke-interface {v2}, Lme/writeily/editor/HighlighterColors;->getListColor()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lme/writeily/editor/Highlighter;->createColorSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;I)V

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 43
    sget-object v1, Lme/writeily/editor/HighlighterPattern;->STRIKETHROUGH:Lme/writeily/editor/HighlighterPattern;

    invoke-virtual {v1}, Lme/writeily/editor/HighlighterPattern;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lme/writeily/editor/Highlighter;->createSpanWithStrikeThroughForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;)V

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 44
    sget-object v1, Lme/writeily/editor/HighlighterPattern;->MONOSPACED:Lme/writeily/editor/HighlighterPattern;

    invoke-virtual {v1}, Lme/writeily/editor/HighlighterPattern;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lme/writeily/editor/Highlighter;->createMonospaceSpanForMatches(Landroid/text/Editable;Ljava/util/regex/Pattern;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    .line 50
    :goto_0
    const/16 v1, 0xe

    aput-boolean v3, v0, v1

    :goto_1
    return-object p1

    .line 34
    :cond_0
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    goto :goto_1

    .line 46
    :catch_0
    move-exception v1

    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
