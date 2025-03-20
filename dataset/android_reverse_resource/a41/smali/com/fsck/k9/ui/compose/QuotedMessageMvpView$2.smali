.class Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$2;
.super Ljava/lang/Object;
.source "QuotedMessageMvpView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;->setOnClickPresenter(Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

.field final synthetic val$presenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$2;->this$0:Lcom/fsck/k9/ui/compose/QuotedMessageMvpView;

    iput-object p2, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$2;->val$presenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 70
    :goto_0
    return-void

    .line 61
    :sswitch_0
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$2;->val$presenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->onClickShowQuotedText()V

    goto :goto_0

    .line 64
    :sswitch_1
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$2;->val$presenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->onClickDeleteQuotedText()V

    goto :goto_0

    .line 67
    :sswitch_2
    iget-object v0, p0, Lcom/fsck/k9/ui/compose/QuotedMessageMvpView$2;->val$presenter:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    invoke-virtual {v0}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->onClickEditQuotedText()V

    goto :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x7f0c007e -> :sswitch_0
        0x7f0c0083 -> :sswitch_2
        0x7f0c0084 -> :sswitch_1
    .end sparse-switch
.end method
