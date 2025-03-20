.class Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->showErrorDialog(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$msgResId:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    iput p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->val$msgResId:I

    iput-object p3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 320
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    const/high16 v1, 0x7f0c0000

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    iget v3, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->val$msgResId:I

    iget-object v4, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$2;->val$args:[Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$500(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;ILjava/lang/String;)V

    .line 321
    return-void
.end method
