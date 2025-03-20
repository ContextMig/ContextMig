.class public Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;
.super Ljava/lang/Object;
.source "JJTAddressListParserState.java"


# instance fields
.field private marks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mk:I

.field private node_created:Z

.field private nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/james/mime4j/field/address/Node;",
            ">;"
        }
    .end annotation
.end field

.field private sp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->nodes:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    .line 15
    iput v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->sp:I

    .line 16
    iput v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    .line 17
    return-void
.end method


# virtual methods
.method public clearNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V
    .locals 2
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/Node;

    .prologue
    .line 69
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->sp:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    if-le v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/Node;

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    .line 73
    return-void
.end method

.method public closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;I)V
    .locals 4
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/Node;
    .param p2, "num"    # I

    .prologue
    .line 88
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    move v1, p2

    .line 89
    .end local p2    # "num":I
    .local v1, "num":I
    :goto_0
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "num":I
    .restart local p2    # "num":I
    if-lez v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v0

    .line 91
    .local v0, "c":Lorg/apache/james/mime4j/field/address/Node;
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/field/address/Node;->jjtSetParent(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 92
    invoke-interface {p1, v0, p2}, Lorg/apache/james/mime4j/field/address/Node;->jjtAddChild(Lorg/apache/james/mime4j/field/address/Node;I)V

    move v1, p2

    .line 93
    .end local p2    # "num":I
    .restart local v1    # "num":I
    goto :goto_0

    .line 94
    .end local v0    # "c":Lorg/apache/james/mime4j/field/address/Node;
    .end local v1    # "num":I
    .restart local p2    # "num":I
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/field/address/Node;->jjtClose()V

    .line 95
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->pushNode(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->node_created:Z

    .line 97
    return-void
.end method

.method public closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V
    .locals 5
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/Node;
    .param p2, "condition"    # Z

    .prologue
    .line 106
    if-eqz p2, :cond_1

    .line 107
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->nodeArity()I

    move-result v0

    .line 108
    .local v0, "a":I
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    move v1, v0

    .line 109
    .end local v0    # "a":I
    .local v1, "a":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "a":I
    .restart local v0    # "a":I
    if-lez v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v2

    .line 111
    .local v2, "c":Lorg/apache/james/mime4j/field/address/Node;
    invoke-interface {v2, p1}, Lorg/apache/james/mime4j/field/address/Node;->jjtSetParent(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 112
    invoke-interface {p1, v2, v0}, Lorg/apache/james/mime4j/field/address/Node;->jjtAddChild(Lorg/apache/james/mime4j/field/address/Node;I)V

    move v1, v0

    .line 113
    .end local v0    # "a":I
    .restart local v1    # "a":I
    goto :goto_0

    .line 114
    .end local v1    # "a":I
    .end local v2    # "c":Lorg/apache/james/mime4j/field/address/Node;
    .restart local v0    # "a":I
    :cond_0
    invoke-interface {p1}, Lorg/apache/james/mime4j/field/address/Node;->jjtClose()V

    .line 115
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->pushNode(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 116
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->node_created:Z

    .line 121
    .end local v0    # "a":I
    :goto_1
    return-void

    .line 118
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    .line 119
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->node_created:Z

    goto :goto_1
.end method

.method public nodeArity()I
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->sp:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public nodeCreated()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->node_created:Z

    return v0
.end method

.method public openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V
    .locals 2
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/Node;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->sp:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    .line 79
    invoke-interface {p1}, Lorg/apache/james/mime4j/field/address/Node;->jjtOpen()V

    .line 80
    return-void
.end method

.method public peekNode()Lorg/apache/james/mime4j/field/address/Node;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->nodes:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Node;

    return-object v0
.end method

.method public popNode()Lorg/apache/james/mime4j/field/address/Node;
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->sp:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->nodes:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Node;

    return-object v0
.end method

.method public pushNode(Lorg/apache/james/mime4j/field/address/Node;)V
    .locals 1
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/Node;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->sp:I

    .line 45
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->marks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 31
    iput v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->sp:I

    .line 32
    iput v1, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->mk:I

    .line 33
    return-void
.end method

.method public rootNode()Lorg/apache/james/mime4j/field/address/Node;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->nodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/Node;

    return-object v0
.end method
