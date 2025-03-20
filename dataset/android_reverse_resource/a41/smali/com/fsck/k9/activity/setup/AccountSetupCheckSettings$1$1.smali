.class Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$1;
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


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$1;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1$1;->this$1:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings$1;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/setup/AccountSetupCheckSettings;->finish()V

    .line 271
    return-void
.end method
