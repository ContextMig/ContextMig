.class Lcom/fsck/k9/view/ClientCertificateSpinner$4;
.super Ljava/lang/Object;
.source "ClientCertificateSpinner.java"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/view/ClientCertificateSpinner;->chooseCertificate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/view/ClientCertificateSpinner;


# direct methods
.method constructor <init>(Lcom/fsck/k9/view/ClientCertificateSpinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/view/ClientCertificateSpinner;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner$4;->this$0:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "User has selected client certificate alias: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/fsck/k9/view/ClientCertificateSpinner$4;->this$0:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/ClientCertificateSpinner;->setAlias(Ljava/lang/String;)V

    .line 107
    return-void
.end method
