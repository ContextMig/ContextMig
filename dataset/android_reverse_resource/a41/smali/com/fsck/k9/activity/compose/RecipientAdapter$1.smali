.class Lcom/fsck/k9/activity/compose/RecipientAdapter$1;
.super Landroid/widget/Filter;
.source "RecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/compose/RecipientAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/compose/RecipientAdapter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/compose/RecipientAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/compose/RecipientAdapter;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->access$000(Lcom/fsck/k9/activity/compose/RecipientAdapter;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    .line 168
    :cond_0
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 169
    .local v0, "result":Landroid/widget/Filter$FilterResults;
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->access$000(Lcom/fsck/k9/activity/compose/RecipientAdapter;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 170
    iget-object v1, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-static {v1}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->access$000(Lcom/fsck/k9/activity/compose/RecipientAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fsck/k9/activity/compose/RecipientAdapter$1;->this$0:Lcom/fsck/k9/activity/compose/RecipientAdapter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/compose/RecipientAdapter;->notifyDataSetChanged()V

    .line 178
    return-void
.end method
