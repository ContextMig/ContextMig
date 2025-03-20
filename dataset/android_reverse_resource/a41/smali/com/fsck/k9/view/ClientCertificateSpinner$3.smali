.class Lcom/fsck/k9/view/ClientCertificateSpinner$3;
.super Ljava/lang/Object;
.source "ClientCertificateSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/view/ClientCertificateSpinner;->setAlias(Ljava/lang/String;)V
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
    .line 74
    iput-object p1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner$3;->this$0:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fsck/k9/view/ClientCertificateSpinner$3;->this$0:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-static {v0}, Lcom/fsck/k9/view/ClientCertificateSpinner;->access$100(Lcom/fsck/k9/view/ClientCertificateSpinner;)V

    .line 78
    iget-object v0, p0, Lcom/fsck/k9/view/ClientCertificateSpinner$3;->this$0:Lcom/fsck/k9/view/ClientCertificateSpinner;

    iget-object v0, v0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mListener:Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/fsck/k9/view/ClientCertificateSpinner$3;->this$0:Lcom/fsck/k9/view/ClientCertificateSpinner;

    iget-object v0, v0, Lcom/fsck/k9/view/ClientCertificateSpinner;->mListener:Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;

    iget-object v1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner$3;->this$0:Lcom/fsck/k9/view/ClientCertificateSpinner;

    iget-object v1, v1, Lcom/fsck/k9/view/ClientCertificateSpinner;->mAlias:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/fsck/k9/view/ClientCertificateSpinner$OnClientCertificateChangedListener;->onClientCertificateChanged(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
