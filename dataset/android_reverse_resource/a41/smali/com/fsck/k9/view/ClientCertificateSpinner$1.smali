.class Lcom/fsck/k9/view/ClientCertificateSpinner$1;
.super Ljava/lang/Object;
.source "ClientCertificateSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/view/ClientCertificateSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 50
    iput-object p1, p0, Lcom/fsck/k9/view/ClientCertificateSpinner$1;->this$0:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fsck/k9/view/ClientCertificateSpinner$1;->this$0:Lcom/fsck/k9/view/ClientCertificateSpinner;

    invoke-virtual {v0}, Lcom/fsck/k9/view/ClientCertificateSpinner;->chooseCertificate()V

    .line 54
    return-void
.end method
