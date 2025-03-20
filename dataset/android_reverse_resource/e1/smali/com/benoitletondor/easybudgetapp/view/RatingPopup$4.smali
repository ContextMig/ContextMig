.class Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;
.super Ljava/lang/Object;
.source "RatingPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->buildNegativeStep()Landroid/support/v7/app/AlertDialog;
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

    sget-object v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5cb4718b0ec79e5bL    # 3.8039418588700645E138

    const-string v2, "com/benoitletondor/easybudgetapp/view/RatingPopup$4"

    const/16 v3, 0xd

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->$jacocoInit()[Z

    move-result-object v0

    .line 155
    iput-object p1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->$jacocoInit()[Z

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;->STEP_DISLIKE_FEEDBACK:Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;

    invoke-static {v1, v2}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->setRatingPopupStep(Landroid/content/Context;Lcom/benoitletondor/easybudgetapp/view/RatingPopup$RatingPopupStep;)V

    aput-boolean v6, v0, v6

    .line 160
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/helper/UserHelper;->setUserHasCompleteRating(Landroid/content/Context;)V

    const/4 v1, 0x2

    aput-boolean v6, v0, v1

    .line 162
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x3

    aput-boolean v6, v0, v2

    .line 163
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x4

    aput-boolean v6, v0, v2

    .line 164
    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x5

    aput-boolean v6, v0, v2

    .line 165
    const-string v2, "android.intent.extra.EMAIL"

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v4}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x6

    aput-boolean v6, v0, v2

    .line 166
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x7

    aput-boolean v6, v0, v2

    .line 167
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v3}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800f9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x8

    aput-boolean v6, v0, v2

    .line 169
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    aput-boolean v6, v0, v2

    .line 171
    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 v1, 0xa

    aput-boolean v6, v0, v1

    .line 177
    :goto_0
    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v1}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/benoitletondor/easybudgetapp/view/RatingPopup$4;->this$0:Lcom/benoitletondor/easybudgetapp/view/RatingPopup;

    invoke-static {v2}, Lcom/benoitletondor/easybudgetapp/view/RatingPopup;->access$000(Lcom/benoitletondor/easybudgetapp/view/RatingPopup;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0xb

    aput-boolean v6, v0, v1

    goto :goto_0
.end method
