.class Lcom/fsck/k9/activity/compose/RecipientPresenter$4;
.super Ljava/lang/Object;
.source "RecipientPresenter.java"

# interfaces
.implements Lorg/openintents/openpgp/util/OpenPgpServiceConnection$OnBound;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/compose/RecipientPresenter;->setupCryptoProvider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/compose/RecipientPresenter;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$4;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBound(Lorg/openintents/openpgp/IOpenPgpService2;)V
    .locals 1
    .param p1, "service"    # Lorg/openintents/openpgp/IOpenPgpService2;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$4;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-static {v0}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->access$600(Lcom/fsck/k9/activity/compose/RecipientPresenter;)V

    .line 741
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientPresenter$4;->this$0:Lcom/fsck/k9/activity/compose/RecipientPresenter;

    invoke-static {v0, p1}, Lcom/fsck/k9/activity/compose/RecipientPresenter;->access$700(Lcom/fsck/k9/activity/compose/RecipientPresenter;Ljava/lang/Exception;)V

    .line 746
    return-void
.end method
