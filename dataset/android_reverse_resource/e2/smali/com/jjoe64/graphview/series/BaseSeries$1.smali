.class Lcom/jjoe64/graphview/series/BaseSeries$1;
.super Ljava/lang/Object;
.source "BaseSeries.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjoe64/graphview/series/BaseSeries;->getValues(DD)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field org:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field plusOne:Z

.field final synthetic this$0:Lcom/jjoe64/graphview/series/BaseSeries;

.field final synthetic val$from:D

.field final synthetic val$until:D


# direct methods
.method constructor <init>(Lcom/jjoe64/graphview/series/BaseSeries;DD)V
    .locals 8
    .param p1, "this$0"    # Lcom/jjoe64/graphview/series/BaseSeries;

    .prologue
    .local p0, "this":Lcom/jjoe64/graphview/series/BaseSeries$1;, "Lcom/jjoe64/graphview/series/BaseSeries$1;"
    const/4 v6, 0x0

    .line 170
    iput-object p1, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->this$0:Lcom/jjoe64/graphview/series/BaseSeries;

    iput-wide p2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$from:D

    iput-wide p4, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$until:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iget-object v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->this$0:Lcom/jjoe64/graphview/series/BaseSeries;

    invoke-static {v2}, Lcom/jjoe64/graphview/series/BaseSeries;->access$000(Lcom/jjoe64/graphview/series/BaseSeries;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    .line 172
    iput-object v6, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 173
    iput-object v6, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 174
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->plusOne:Z

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "found":Z
    const/4 v1, 0x0

    .line 180
    .local v1, "prevValue":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    iget-object v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "prevValue":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    check-cast v1, Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 183
    .restart local v1    # "prevValue":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    :cond_0
    invoke-interface {v1}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$from:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4

    .line 184
    iput-object v1, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 185
    const/4 v0, 0x1

    .line 198
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 199
    iput-object v6, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 201
    :cond_2
    return-void

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 187
    :cond_4
    iget-object v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/series/DataPointInterface;

    iput-object v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 189
    iget-object v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v2}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$from:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_3

    .line 190
    const/4 v0, 0x1

    .line 191
    iget-object v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    iput-object v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 192
    iput-object v1, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    .line 228
    .local p0, "this":Lcom/jjoe64/graphview/series/BaseSeries$1;, "Lcom/jjoe64/graphview/series/BaseSeries$1;"
    iget-object v0, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    invoke-interface {v0}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$until:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->plusOne:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/jjoe64/graphview/series/DataPointInterface;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/jjoe64/graphview/series/BaseSeries$1;, "Lcom/jjoe64/graphview/series/BaseSeries$1;"
    const/4 v6, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/jjoe64/graphview/series/BaseSeries$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    iget-object v0, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 212
    .local v0, "r":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    invoke-interface {v0}, Lcom/jjoe64/graphview/series/DataPointInterface;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->val$until:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 213
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->plusOne:Z

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    if-eqz v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    iput-object v1, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 217
    iput-object v6, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextNextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    .line 220
    :goto_0
    return-object v0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->org:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/series/DataPointInterface;

    iput-object v1, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    goto :goto_0

    .line 219
    :cond_2
    iput-object v6, p0, Lcom/jjoe64/graphview/series/BaseSeries$1;->nextValue:Lcom/jjoe64/graphview/series/DataPointInterface;

    goto :goto_0

    .line 222
    .end local v0    # "r":Lcom/jjoe64/graphview/series/DataPointInterface;, "TE;"
    :cond_3
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lcom/jjoe64/graphview/series/BaseSeries$1;, "Lcom/jjoe64/graphview/series/BaseSeries$1;"
    invoke-virtual {p0}, Lcom/jjoe64/graphview/series/BaseSeries$1;->next()Lcom/jjoe64/graphview/series/DataPointInterface;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 205
    .local p0, "this":Lcom/jjoe64/graphview/series/BaseSeries$1;, "Lcom/jjoe64/graphview/series/BaseSeries$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
