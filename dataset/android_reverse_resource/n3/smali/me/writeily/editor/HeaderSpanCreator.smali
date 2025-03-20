.class Lme/writeily/editor/HeaderSpanCreator;
.super Ljava/lang/Object;
.source "HeaderSpanCreator.java"

# interfaces
.implements Lme/writeily/editor/SpanCreator;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final DISPLAY_METRICS:Landroid/util/DisplayMetrics;

.field public static final POUND_SIGN:Ljava/lang/Character;

.field public static final SIZE_STEP:F = 0.2f

.field public static final STANDARD_PROPORTION_MAX:F = 1.8f


# instance fields
.field private final color:I

.field private final e:Landroid/text/Editable;

.field private highlighter:Lme/writeily/editor/Highlighter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/editor/HeaderSpanCreator;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x138aeb564d6710d8L

    const-string v2, "me/writeily/editor/HeaderSpanCreator"

    const/16 v3, 0x1a

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/editor/HeaderSpanCreator;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/editor/HeaderSpanCreator;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sput-object v1, Lme/writeily/editor/HeaderSpanCreator;->POUND_SIGN:Ljava/lang/Character;

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    .line 17
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sput-object v1, Lme/writeily/editor/HeaderSpanCreator;->DISPLAY_METRICS:Landroid/util/DisplayMetrics;

    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lme/writeily/editor/Highlighter;Landroid/text/Editable;I)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/editor/HeaderSpanCreator;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lme/writeily/editor/HeaderSpanCreator;->highlighter:Lme/writeily/editor/Highlighter;

    .line 27
    iput-object p2, p0, Lme/writeily/editor/HeaderSpanCreator;->e:Landroid/text/Editable;

    .line 28
    iput p3, p0, Lme/writeily/editor/HeaderSpanCreator;->color:I

    .line 29
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private calculateAdjustedSize(Ljava/lang/Float;)F
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/editor/HeaderSpanCreator;->$jacocoInit()[Z

    move-result-object v0

    .line 40
    const/4 v1, 0x2

    iget-object v2, p0, Lme/writeily/editor/HeaderSpanCreator;->highlighter:Lme/writeily/editor/Highlighter;

    iget-object v2, v2, Lme/writeily/editor/Highlighter;->fontSize:Ljava/lang/Integer;

    const/4 v3, 0x6

    aput-boolean v5, v0, v3

    .line 41
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    sget-object v3, Lme/writeily/editor/HeaderSpanCreator;->DISPLAY_METRICS:Landroid/util/DisplayMetrics;

    const/4 v4, 0x7

    aput-boolean v5, v0, v4

    .line 40
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/16 v2, 0x8

    aput-boolean v5, v0, v2

    return v1
.end method

.method private calculateProportionBasedOnHeaderType([C)Ljava/lang/Float;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/editor/HeaderSpanCreator;->$jacocoInit()[Z

    move-result-object v1

    .line 51
    invoke-direct {p0, p1}, Lme/writeily/editor/HeaderSpanCreator;->calculateProportionForHashesHeader([C)Ljava/lang/Float;

    move-result-object v0

    const/16 v2, 0xa

    aput-boolean v4, v1, v2

    .line 52
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x3fe66666    # 1.8f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/16 v0, 0xb

    aput-boolean v4, v1, v0

    .line 53
    invoke-direct {p0, p1}, Lme/writeily/editor/HeaderSpanCreator;->calculateProportionForUnderlineHeader([C)Ljava/lang/Float;

    move-result-object v0

    const/16 v2, 0xc

    aput-boolean v4, v1, v2

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/16 v2, 0xd

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private calculateProportionForHashesHeader([C)Ljava/lang/Float;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/editor/HeaderSpanCreator;->$jacocoInit()[Z

    move-result-object v2

    .line 69
    const v1, 0x3fe66666    # 1.8f

    .line 70
    .local v1, "proportion":F
    const/4 v0, 0x0

    const/16 v3, 0x15

    aput-boolean v5, v2, v3

    .line 72
    :goto_0
    sget-object v3, Lme/writeily/editor/HeaderSpanCreator;->POUND_SIGN:Ljava/lang/Character;

    aget-char v4, p1, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    const v3, 0x3e4ccccd    # 0.2f

    sub-float/2addr v1, v3

    .line 74
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    const/16 v3, 0x16

    aput-boolean v5, v2, v3

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v4, 0x17

    aput-boolean v5, v2, v4

    return-object v3
.end method

.method private calculateProportionForUnderlineHeader([C)Ljava/lang/Float;
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lme/writeily/editor/HeaderSpanCreator;->$jacocoInit()[Z

    move-result-object v1

    .line 59
    const v2, 0x3fe66666    # 1.8f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/16 v2, 0xe

    aput-boolean v4, v1, v2

    .line 60
    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-char v3, p1, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    aput-boolean v4, v1, v2

    .line 61
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .local v0, "proportion":Ljava/lang/Float;
    const/16 v2, 0x10

    aput-boolean v4, v1, v2

    .line 65
    :goto_0
    const/16 v2, 0x14

    aput-boolean v4, v1, v2

    return-object v0

    .line 62
    .end local v0    # "proportion":Ljava/lang/Float;
    :cond_0
    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-char v3, p1, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x11

    aput-boolean v4, v1, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x12

    aput-boolean v4, v1, v2

    .line 63
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x3ecccccd    # 0.4f

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "proportion":Ljava/lang/Float;
    const/16 v2, 0x13

    aput-boolean v4, v1, v2

    goto :goto_0
.end method

.method private extractMatchingRange(Ljava/util/regex/Matcher;)[C
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/editor/HeaderSpanCreator;->$jacocoInit()[Z

    move-result-object v0

    .line 46
    iget-object v1, p0, Lme/writeily/editor/HeaderSpanCreator;->e:Landroid/text/Editable;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public create(Ljava/util/regex/Matcher;)Landroid/text/ParcelableSpan;
    .locals 7

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/editor/HeaderSpanCreator;->$jacocoInit()[Z

    move-result-object v6

    .line 32
    invoke-direct {p0, p1}, Lme/writeily/editor/HeaderSpanCreator;->extractMatchingRange(Ljava/util/regex/Matcher;)[C

    move-result-object v0

    aput-boolean v2, v6, v2

    .line 33
    invoke-direct {p0, v0}, Lme/writeily/editor/HeaderSpanCreator;->calculateProportionBasedOnHeaderType([C)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x2

    aput-boolean v2, v6, v1

    .line 34
    invoke-direct {p0, v0}, Lme/writeily/editor/HeaderSpanCreator;->calculateAdjustedSize(Ljava/lang/Float;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v0, 0x3

    aput-boolean v2, v6, v0

    .line 35
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Lme/writeily/editor/HeaderSpanCreator;->highlighter:Lme/writeily/editor/Highlighter;

    iget-object v1, v1, Lme/writeily/editor/Highlighter;->fontType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Float;->byteValue()B

    move-result v3

    iget v4, p0, Lme/writeily/editor/HeaderSpanCreator;->color:I

    const/4 v5, 0x4

    aput-boolean v2, v6, v5

    .line 36
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 35
    const/4 v1, 0x5

    aput-boolean v2, v6, v1

    return-object v0
.end method
