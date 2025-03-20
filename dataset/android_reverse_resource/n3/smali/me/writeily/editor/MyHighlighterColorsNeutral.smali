.class Lme/writeily/editor/MyHighlighterColorsNeutral;
.super Ljava/lang/Object;
.source "MyHighlighterColorsNeutral.java"

# interfaces
.implements Lme/writeily/editor/HighlighterColors;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private final COLOR_HEADER:I

.field private final COLOR_LINK:I

.field private final COLOR_LIST:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/editor/MyHighlighterColorsNeutral;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x571254ca24a904abL

    const-string v2, "me/writeily/editor/MyHighlighterColorsNeutral"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/editor/MyHighlighterColorsNeutral;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const v2, -0x109400

    invoke-static {}, Lme/writeily/editor/MyHighlighterColorsNeutral;->$jacocoInit()[Z

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v2, p0, Lme/writeily/editor/MyHighlighterColorsNeutral;->COLOR_HEADER:I

    .line 6
    const v1, -0xe15c03

    iput v1, p0, Lme/writeily/editor/MyHighlighterColorsNeutral;->COLOR_LINK:I

    .line 7
    iput v2, p0, Lme/writeily/editor/MyHighlighterColorsNeutral;->COLOR_LIST:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getHeaderColor()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/editor/MyHighlighterColorsNeutral;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    const v1, -0x109400

    aput-boolean v2, v0, v2

    return v1
.end method

.method public getLinkColor()I
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/editor/MyHighlighterColorsNeutral;->$jacocoInit()[Z

    move-result-object v0

    .line 16
    const v1, -0xe15c03

    const/4 v2, 0x2

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public getListColor()I
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/editor/MyHighlighterColorsNeutral;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    const v1, -0x109400

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method
