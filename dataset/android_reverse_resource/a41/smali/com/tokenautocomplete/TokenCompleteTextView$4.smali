.class Lcom/tokenautocomplete/TokenCompleteTextView$4;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->removeObject(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 946
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$4;, "Lcom/tokenautocomplete/TokenCompleteTextView$4;"
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iput-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$4;, "Lcom/tokenautocomplete/TokenCompleteTextView$4;"
    const/4 v4, 0x0

    .line 951
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 952
    .local v2, "text":Landroid/text/Editable;
    if-nez v2, :cond_1

    .line 976
    :cond_0
    return-void

    .line 955
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 956
    .local v3, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;>;"
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$800(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 957
    .local v0, "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->val$object:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 958
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 961
    .end local v0    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 962
    .restart local v0    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$800(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 964
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$900(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    move-result-object v6

    invoke-virtual {v6, v2, v0, v4, v4}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto :goto_1

    .line 967
    .end local v0    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_4
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1000(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 970
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 971
    .local v1, "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    array-length v5, v1

    :goto_2
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 972
    .restart local v0    # "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->val$object:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 973
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v6, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1100(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    .line 971
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
