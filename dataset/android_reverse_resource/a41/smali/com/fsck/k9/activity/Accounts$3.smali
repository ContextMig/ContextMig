.class Lcom/fsck/k9/activity/Accounts$3;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/Accounts;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$1800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/BaseAccount;

    move-result-object v1

    instance-of v1, v1, Lcom/fsck/k9/Account;

    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$1800(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/BaseAccount;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 1070
    .local v0, "realAccount":Lcom/fsck/k9/Account;
    :try_start_0
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getLocalStore()Lcom/fsck/k9/mailstore/LocalStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/LocalStore;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-virtual {v1}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v1

    .line 1076
    invoke-virtual {v1, v0}, Lcom/fsck/k9/controller/MessagingController;->deleteAccount(Lcom/fsck/k9/Account;)V

    .line 1077
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    .line 1078
    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->deleteAccount(Lcom/fsck/k9/Account;)V

    .line 1079
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V

    .line 1080
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$3;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-static {v1}, Lcom/fsck/k9/activity/Accounts;->access$1000(Lcom/fsck/k9/activity/Accounts;)V

    .line 1082
    .end local v0    # "realAccount":Lcom/fsck/k9/Account;
    :cond_0
    return-void

    .line 1071
    .restart local v0    # "realAccount":Lcom/fsck/k9/Account;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
