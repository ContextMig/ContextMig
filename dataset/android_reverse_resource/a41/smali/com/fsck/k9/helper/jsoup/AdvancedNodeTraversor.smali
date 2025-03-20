.class public Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor;
.super Ljava/lang/Object;
.source "AdvancedNodeTraversor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;
    }
.end annotation


# instance fields
.field private filter:Lcom/fsck/k9/helper/jsoup/NodeFilter;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/helper/jsoup/NodeFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/fsck/k9/helper/jsoup/NodeFilter;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor;->filter:Lcom/fsck/k9/helper/jsoup/NodeFilter;

    .line 72
    return-void
.end method


# virtual methods
.method public filter(Lorg/jsoup/nodes/Node;)Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;
    .locals 6
    .param p1, "root"    # Lorg/jsoup/nodes/Node;

    .prologue
    .line 83
    move-object v2, p1

    .line 84
    .local v2, "node":Lorg/jsoup/nodes/Node;
    const/4 v0, 0x0

    .line 86
    .local v0, "depth":I
    :cond_0
    :goto_0
    if-eqz v2, :cond_c

    .line 87
    iget-object v5, p0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor;->filter:Lcom/fsck/k9/helper/jsoup/NodeFilter;

    invoke-interface {v5, v2, v0}, Lcom/fsck/k9/helper/jsoup/NodeFilter;->head(Lorg/jsoup/nodes/Node;I)Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    move-result-object v1

    .line 88
    .local v1, "headResult":Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;
    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->STOP:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    if-ne v1, v5, :cond_1

    .line 89
    sget-object v5, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->STOPPED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    .line 137
    .end local v1    # "headResult":Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;
    :goto_1
    return-object v5

    .line 92
    .restart local v1    # "headResult":Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;
    :cond_1
    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    if-ne v1, v5, :cond_2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v5

    if-lez v5, :cond_2

    .line 93
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v2

    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    sget-object v4, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    .line 99
    .local v4, "tailResult":Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;
    :goto_2
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v5

    if-nez v5, :cond_7

    if-lez v0, :cond_7

    .line 100
    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    if-eq v1, v5, :cond_3

    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->SKIP_CHILDREN:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    if-ne v1, v5, :cond_4

    .line 101
    :cond_3
    iget-object v5, p0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor;->filter:Lcom/fsck/k9/helper/jsoup/NodeFilter;

    invoke-interface {v5, v2, v0}, Lcom/fsck/k9/helper/jsoup/NodeFilter;->tail(Lorg/jsoup/nodes/Node;I)Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    move-result-object v4

    .line 102
    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->STOP:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    if-ne v4, v5, :cond_4

    .line 103
    sget-object v5, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->STOPPED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    goto :goto_1

    .line 107
    :cond_4
    move-object v3, v2

    .line 108
    .local v3, "prev":Lorg/jsoup/nodes/Node;
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v2

    .line 109
    add-int/lit8 v0, v0, -0x1

    .line 111
    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    if-eq v1, v5, :cond_5

    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    if-ne v4, v5, :cond_6

    .line 112
    :cond_5
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->remove()V

    .line 115
    :cond_6
    sget-object v1, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    .line 116
    goto :goto_2

    .line 118
    .end local v3    # "prev":Lorg/jsoup/nodes/Node;
    :cond_7
    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->CONTINUE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    if-eq v1, v5, :cond_8

    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->SKIP_CHILDREN:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    if-ne v1, v5, :cond_9

    .line 119
    :cond_8
    iget-object v5, p0, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor;->filter:Lcom/fsck/k9/helper/jsoup/NodeFilter;

    invoke-interface {v5, v2, v0}, Lcom/fsck/k9/helper/jsoup/NodeFilter;->tail(Lorg/jsoup/nodes/Node;I)Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    move-result-object v4

    .line 120
    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;->STOP:Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;

    if-ne v4, v5, :cond_9

    .line 121
    sget-object v5, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->STOPPED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    goto :goto_1

    .line 125
    :cond_9
    move-object v3, v2

    .line 126
    .restart local v3    # "prev":Lorg/jsoup/nodes/Node;
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v2

    .line 128
    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    if-ne v1, v5, :cond_a

    .line 129
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->remove()V

    .line 132
    :cond_a
    if-ne v3, p1, :cond_0

    .line 133
    sget-object v5, Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;->REMOVE:Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;

    if-ne v1, v5, :cond_b

    sget-object v5, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->ROOT_REMOVED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    goto :goto_1

    :cond_b
    sget-object v5, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->ENDED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    goto :goto_1

    .line 137
    .end local v1    # "headResult":Lcom/fsck/k9/helper/jsoup/NodeFilter$HeadFilterDecision;
    .end local v3    # "prev":Lorg/jsoup/nodes/Node;
    .end local v4    # "tailResult":Lcom/fsck/k9/helper/jsoup/NodeFilter$TailFilterDecision;
    :cond_c
    sget-object v5, Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;->ENDED:Lcom/fsck/k9/helper/jsoup/AdvancedNodeTraversor$FilterResult;

    goto :goto_1
.end method
