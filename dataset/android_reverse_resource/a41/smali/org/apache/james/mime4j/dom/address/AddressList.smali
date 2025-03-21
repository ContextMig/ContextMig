.class public Lorg/apache/james/mime4j/dom/address/AddressList;
.super Ljava/util/AbstractList;
.source "AddressList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lorg/apache/james/mime4j/dom/address/Address;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/dom/address/AddressList;-><init>(Ljava/util/List;Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .param p2, "dontCopy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/james/mime4j/dom/address/Address;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 46
    if-eqz p1, :cond_1

    .line 47
    if-eqz p2, :cond_0

    .end local p1    # "addresses":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    :goto_0
    iput-object p1, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->addresses:Ljava/util/List;

    .line 51
    :goto_1
    return-void

    .line 47
    .restart local p1    # "addresses":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/james/mime4j/dom/address/Address;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->addresses:Ljava/util/List;

    goto :goto_1
.end method

.method public varargs constructor <init>([Lorg/apache/james/mime4j/dom/address/Address;)V
    .locals 1
    .param p1, "addresses"    # [Lorg/apache/james/mime4j/dom/address/Address;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->addresses:Ljava/util/List;

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->addresses:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public flatten()Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 6

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "groupDetected":Z
    iget-object v4, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/address/Address;

    .line 97
    .local v0, "addr":Lorg/apache/james/mime4j/dom/address/Address;
    instance-of v5, v0, Lorg/apache/james/mime4j/dom/address/Mailbox;

    if-nez v5, :cond_0

    .line 98
    const/4 v1, 0x1

    .line 103
    .end local v0    # "addr":Lorg/apache/james/mime4j/dom/address/Address;
    :cond_1
    if-nez v1, :cond_2

    .line 105
    iget-object v2, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->addresses:Ljava/util/List;

    .line 106
    .local v2, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    new-instance v4, Lorg/apache/james/mime4j/dom/address/MailboxList;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Lorg/apache/james/mime4j/dom/address/MailboxList;-><init>(Ljava/util/List;Z)V

    .line 116
    .end local v2    # "mailboxes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    :goto_0
    return-object v4

    .line 109
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    iget-object v4, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/address/Address;

    .line 111
    .restart local v0    # "addr":Lorg/apache/james/mime4j/dom/address/Address;
    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/dom/address/Address;->addMailboxesTo(Ljava/util/List;)V

    goto :goto_1

    .line 116
    .end local v0    # "addr":Lorg/apache/james/mime4j/dom/address/Address;
    :cond_3
    new-instance v4, Lorg/apache/james/mime4j/dom/address/MailboxList;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/dom/address/MailboxList;-><init>(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/dom/address/AddressList;->get(I)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/apache/james/mime4j/dom/address/Address;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/dom/address/Address;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/dom/address/AddressList;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
