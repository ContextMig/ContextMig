.class Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;
.super Ljava/lang/Object;
.source "RatingPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->buildPositiveStep()Landroid/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x56d647ef03ca49dcL    # -2.138877112999398E-110

    const-string v2, "com/benoitletondor/easybudgetapp/view/RatingPopup$6"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;->$jacocoInit()[Z

    move-result-object v0

    .line 202
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;->$jacocoInit()[Z

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_LIKE_RATED:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->setRatingPopupStep(Landroid/content/Context;Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;)V

    aput-boolean v6, v0, v6

    .line 207
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->setUserHasCompleteRating(Landroid/content/Context;)V

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    .line 209
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    :try_start_0
    aput-boolean v3, v0, v2

    .line 213
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "market://details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v3, 0x4

    const/4 v4, 0x1

    aput-boolean v4, v0, v3

    .line 215
    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    .line 223
    :goto_0
    const/16 v1, 0x9

    aput-boolean v6, v0, v1

    return-void

    .line 217
    :catch_0
    move-exception v2

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    .line 219
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    .line 221
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$6;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0x8

    aput-boolean v6, v0, v1

    goto :goto_0
.end method
