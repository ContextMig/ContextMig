.class Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenSpanWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .prologue
    .line 1233
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;
    .param p2, "x1"    # Lcom/tokenautocomplete/TokenCompleteTextView$1;

    .prologue
    .line 1233
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 1238
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    instance-of v1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1400(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1500(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p2

    .line 1239
    check-cast v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1240
    .local v0, "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$300(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1600(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1600(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;->onTokenAdded(Ljava/lang/Object;)V

    .line 1245
    .end local v0    # "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_0
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 0
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "ostart"    # I
    .param p4, "oend"    # I
    .param p5, "nstart"    # I
    .param p6, "nend"    # I

    .prologue
    .line 1263
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 1250
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenSpanWatcher;"
    instance-of v1, p2, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1400(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1500(Lcom/tokenautocomplete/TokenCompleteTextView;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p2

    .line 1251
    check-cast v0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1252
    .local v0, "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$300(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$300(Lcom/tokenautocomplete/TokenCompleteTextView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1256
    :cond_0
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1600(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1257
    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenSpanWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1600(Lcom/tokenautocomplete/TokenCompleteTextView;)Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;->getToken()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenListener;->onTokenRemoved(Ljava/lang/Object;)V

    .line 1259
    .end local v0    # "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_1
    return-void
.end method
