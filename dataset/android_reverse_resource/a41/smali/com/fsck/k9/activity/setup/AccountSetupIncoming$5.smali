.class Lcom/fsck/k9/activity/setup/AccountSetupIncoming$5;
.super Ljava/lang/Object;
.source "AccountSetupIncoming.java"

# interfaces
.implements Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/AccountSetupIncoming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$5;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientCertificateChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 644
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupIncoming$5;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupIncoming;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupIncoming;->access$300(Lcom/fsck/k9/activity/setup/AccountSetupIncoming;)V

    .line 645
    return-void
.end method
