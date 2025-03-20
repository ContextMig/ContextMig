.class Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$4;
.super Ljava/lang/Object;
.source "AccountSetupOutgoing.java"

# interfaces
.implements Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientCertificateChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing$4;->this$0:Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;

    invoke-static {v0}, Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;->access$900(Lcom/fsck/k9/activity/setup/AccountSetupOutgoing;)V

    .line 527
    return-void
.end method
