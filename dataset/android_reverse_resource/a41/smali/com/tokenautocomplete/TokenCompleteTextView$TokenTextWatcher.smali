.class Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TokenTextWatcher"
.end annotation


# instance fields
.field spansToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tokenautocomplete/TokenCompleteTextView",
            "<TT;>.TokenImageSpan;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method private constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 1

    .prologue
    .line 1270
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenTextWatcher;"
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->spansToRemove:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;Lcom/tokenautocomplete/TokenCompleteTextView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tokenautocomplete/TokenCompleteTextView;
    .param p2, "x1"    # Lcom/tokenautocomplete/TokenCompleteTextView$1;

    .prologue
    .line 1270
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenTextWatcher;"
    invoke-direct {p0, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;-><init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    .line 1304
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenTextWatcher;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->spansToRemove:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1305
    .local v2, "spansCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1306
    .local v3, "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1307
    .local v1, "spanStart":I
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1309
    .local v0, "spanEnd":I
    invoke-virtual {p0, v3, p1}, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->removeToken(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;Landroid/text/Editable;)V

    .line 1312
    add-int/lit8 v0, v0, -0x1

    .line 1315
    if-ltz v0, :cond_1

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$400(Lcom/tokenautocomplete/TokenCompleteTextView;C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1316
    add-int/lit8 v5, v0, 0x1

    invoke-interface {p1, v0, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1319
    :cond_1
    if-ltz v1, :cond_0

    iget-object v5, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v5, v6}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$400(Lcom/tokenautocomplete/TokenCompleteTextView;C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1320
    add-int/lit8 v5, v1, 0x1

    invoke-interface {p1, v1, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1324
    .end local v0    # "spanEnd":I
    .end local v1    # "spanStart":I
    .end local v3    # "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_2
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1300(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 1325
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-static {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->access$1700(Lcom/tokenautocomplete/TokenCompleteTextView;)V

    .line 1326
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1280
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenTextWatcher;"
    if-lez p3, :cond_2

    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1281
    iget-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v4}, Lcom/tokenautocomplete/TokenCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1282
    .local v2, "text":Landroid/text/Editable;
    add-int v0, p2, p3

    .line 1285
    .local v0, "end":I
    invoke-interface {v2, p2}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 1286
    add-int/lit8 p2, p2, -0x1

    .line 1289
    :cond_0
    const-class v4, Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    invoke-interface {v2, p2, v0, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;

    .line 1293
    .local v1, "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->spansToRemove:Ljava/util/ArrayList;

    .line 1294
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    .line 1295
    .local v3, "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-interface {v2, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    if-ge v6, v0, :cond_1

    invoke-interface {v2, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ge p2, v6, :cond_1

    .line 1296
    iget-object v6, p0, Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;->spansToRemove:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1300
    .end local v0    # "end":I
    .end local v1    # "spans":[Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "[Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    .end local v2    # "text":Landroid/text/Editable;
    .end local v3    # "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1330
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenTextWatcher;"
    return-void
.end method

.method protected removeToken(Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;Landroid/text/Editable;)V
    .locals 0
    .param p2, "text"    # Landroid/text/Editable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tokenautocomplete/TokenCompleteTextView",
            "<TT;>.TokenImageSpan;",
            "Landroid/text/Editable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1274
    .local p0, "this":Lcom/tokenautocomplete/TokenCompleteTextView$TokenTextWatcher;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenTextWatcher;"
    .local p1, "token":Lcom/tokenautocomplete/TokenCompleteTextView$TokenImageSpan;, "Lcom/tokenautocomplete/TokenCompleteTextView<TT;>.TokenImageSpan;"
    invoke-interface {p2, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1275
    return-void
.end method
