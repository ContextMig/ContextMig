.class public Lcom/fsck/k9/fragment/MessageViewHolder;
.super Ljava/lang/Object;
.source "MessageViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public chip:Landroid/view/View;

.field public contactBadge:Lcom/fsck/k9/ui/ContactBadge;

.field public date:Landroid/widget/TextView;

.field public flagged:Landroid/widget/CheckBox;

.field private final fragment:Lcom/fsck/k9/fragment/MessageListFragment;

.field public from:Landroid/widget/TextView;

.field public position:I

.field public preview:Landroid/widget/TextView;

.field public selected:Landroid/widget/CheckBox;

.field public subject:Landroid/widget/TextView;

.field public threadCount:Landroid/widget/TextView;

.field public time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/fragment/MessageListFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/fragment/MessageViewHolder;->position:I

    .line 27
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageViewHolder;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    .line 28
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 32
    iget v0, p0, Lcom/fsck/k9/fragment/MessageViewHolder;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 35
    :sswitch_0
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageViewHolder;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget v1, p0, Lcom/fsck/k9/fragment/MessageViewHolder;->position:I

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->toggleMessageSelectWithAdapterPosition(I)V

    goto :goto_0

    .line 39
    :sswitch_1
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageViewHolder;->fragment:Lcom/fsck/k9/fragment/MessageListFragment;

    iget v1, p0, Lcom/fsck/k9/fragment/MessageViewHolder;->position:I

    invoke-virtual {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->toggleMessageFlagWithAdapterPosition(I)V

    goto :goto_0

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c00c2 -> :sswitch_0
        0x7f0c00c6 -> :sswitch_1
        0x7f0c00cb -> :sswitch_1
    .end sparse-switch
.end method
