.class Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$2;
.super Ljava/lang/Object;
.source "AccountSetupCheckSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;

.field final synthetic val$chain:[Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;[Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;

    iput-object p2, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$2;->val$chain:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 263
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$2;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$2;->val$chain:[Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->access$400(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;Ljava/security/cert/X509Certificate;)V

    .line 264
    return-void
.end method
