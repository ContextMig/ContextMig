.class Lcom/tokenautocomplete/TokenCompleteTextView$5;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tokenautocomplete/TokenCompleteTextView;

    .prologue
    .line 1095
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$5;, "Lcom/tokenautocomplete/TokenCompleteTextView$5;"
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$5;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$5;, "Lcom/tokenautocomplete/TokenCompleteTextView$5;"
    const/4 v3, 0x0

    .line 1099
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$5;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1100
    .local v2, "text":Landroid/text/Editable;
    if-nez v2, :cond_1

    .line 1110
    :cond_0
    return-void

    .line 1103
    :cond_1
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1104
    .local v1, "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 1105
    .local v0, "span":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$5;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v5, v0}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1100(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;)V

    .line 1108
    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$5;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v5}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$900(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;

    move-result-object v5

    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v5, v2, v0, v6, v7}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
