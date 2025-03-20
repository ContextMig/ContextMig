.class public final enum Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
.super Ljava/lang/Enum;
.source "RatingPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/benoitletondor/easybudgetapp/view/RatingPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RatingPopupStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

.field private static final transient synthetic $jacocoData:[Z

.field public static final enum STEP_DISLIKE:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

.field public static final enum STEP_DISLIKE_FEEDBACK:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

.field public static final enum STEP_DISLIKE_NO_FEEDBACK:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

.field public static final enum STEP_LIKE:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

.field public static final enum STEP_LIKE_NOT_RATED:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

.field public static final enum STEP_LIKE_RATED:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

.field public static final enum STEP_NOT_ASK_ME_AGAIN:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

.field public static final enum STEP_NOT_SHOWN:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

.field public static final enum STEP_SHOWN:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;


# instance fields
.field public value:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x4983fadc9299bc05L    # 1.4258153191720538E46

    const-string v2, "com/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep"

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->$jacocoInit()[Z

    move-result-object v0

    .line 260
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const-string v2, "STEP_NOT_SHOWN"

    invoke-direct {v1, v2, v8, v8}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_NOT_SHOWN:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-boolean v5, v0, v6

    .line 265
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const-string v2, "STEP_SHOWN"

    invoke-direct {v1, v2, v5, v5}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_SHOWN:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-boolean v5, v0, v7

    .line 270
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const-string v2, "STEP_LIKE"

    invoke-direct {v1, v2, v9, v9}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_LIKE:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const/16 v1, 0x9

    aput-boolean v5, v0, v1

    .line 275
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const-string v2, "STEP_LIKE_NOT_RATED"

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_LIKE_NOT_RATED:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const/16 v1, 0xa

    aput-boolean v5, v0, v1

    .line 280
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const-string v2, "STEP_LIKE_RATED"

    const/4 v3, 0x4

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_LIKE_RATED:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const/16 v1, 0xb

    aput-boolean v5, v0, v1

    .line 285
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const-string v2, "STEP_DISLIKE"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_DISLIKE:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const/16 v1, 0xc

    aput-boolean v5, v0, v1

    .line 290
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const-string v2, "STEP_DISLIKE_NO_FEEDBACK"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_DISLIKE_NO_FEEDBACK:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const/16 v1, 0xd

    aput-boolean v5, v0, v1

    .line 295
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const-string v2, "STEP_DISLIKE_FEEDBACK"

    invoke-direct {v1, v2, v6, v6}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_DISLIKE_FEEDBACK:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const/16 v1, 0xe

    aput-boolean v5, v0, v1

    .line 300
    new-instance v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const-string v2, "STEP_NOT_ASK_ME_AGAIN"

    invoke-direct {v1, v2, v7, v7}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_NOT_ASK_ME_AGAIN:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    .line 255
    const/16 v1, 0x9

    new-array v1, v1, [Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    sget-object v2, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_NOT_SHOWN:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-object v2, v1, v8

    sget-object v2, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_SHOWN:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-object v2, v1, v5

    sget-object v2, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_LIKE:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-object v2, v1, v9

    const/4 v2, 0x3

    sget-object v3, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_LIKE_NOT_RATED:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_LIKE_RATED:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_DISLIKE:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_DISLIKE_NO_FEEDBACK:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-object v3, v1, v2

    sget-object v2, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_DISLIKE_FEEDBACK:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-object v2, v1, v6

    sget-object v2, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_NOT_ASK_ME_AGAIN:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-object v2, v1, v7

    sput-object v1, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->$VALUES:[Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const/16 v1, 0xf

    aput-boolean v5, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->$jacocoInit()[Z

    move-result-object v0

    .line 305
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 306
    iput p3, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->value:I

    .line 307
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static fromValue(I)Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->$jacocoInit()[Z

    move-result-object v2

    .line 318
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->values()[Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    const/4 v5, 0x3

    aput-boolean v6, v2, v5

    .local v0, "step":Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 320
    iget v5, v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->value:I

    if-ne v5, p0, :cond_0

    .line 322
    const/4 v1, 0x4

    aput-boolean v6, v2, v1

    .line 326
    .end local v0    # "step":Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
    :goto_1
    return-object v0

    .line 318
    .restart local v0    # "step":Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x5

    aput-boolean v6, v2, v5

    goto :goto_0

    .line 326
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x6

    aput-boolean v6, v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->$jacocoInit()[Z

    move-result-object v1

    .line 255
    const-class v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    aput-boolean v2, v1, v2

    return-object v0
.end method

.method public static values()[Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;
    .locals 4

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->$jacocoInit()[Z

    move-result-object v1

    .line 255
    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->$VALUES:[Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    invoke-virtual {v0}, [Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-object v0
.end method
