.class Lorg/apache/james/mime4j/field/address/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    }
.end annotation


# static fields
.field private static final singleton:Lorg/apache/james/mime4j/field/address/Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/Builder;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/Token;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "specialToken"    # Lorg/apache/james/mime4j/field/address/Token;

    .prologue
    .line 198
    if-eqz p2, :cond_0

    .line 199
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/Token;)V

    .line 200
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_0
    return-void
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/dom/address/DomainList;Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 5
    .param p1, "route"    # Lorg/apache/james/mime4j/dom/address/DomainList;
    .param p2, "node"    # Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .prologue
    const/4 v4, 0x1

    .line 175
    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 176
    .local v1, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/address/ASTlocal_part;

    invoke-direct {p0, v3, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "localPart":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/james/mime4j/field/address/ASTdomain;

    invoke-direct {p0, v3, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "domain":Ljava/lang/String;
    new-instance v3, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-direct {v3, p1, v2, v0}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 1
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/dom/address/DomainList;Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method private buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 4
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/ASTangle_addr;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 140
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    const/4 v2, 0x0

    .line 141
    .local v2, "route":Lorg/apache/james/mime4j/dom/address/DomainList;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v1

    .line 142
    .local v1, "n":Lorg/apache/james/mime4j/field/address/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ASTroute;

    if-eqz v3, :cond_1

    .line 143
    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTroute;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildRoute(Lorg/apache/james/mime4j/field/address/ASTroute;)Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v2

    .line 144
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v1

    .line 151
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_0
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    if-eqz v3, :cond_2

    .line 152
    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/dom/address/DomainList;Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v3

    return-object v3

    .line 145
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_1
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    if-nez v3, :cond_0

    .line 149
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v3

    .line 154
    :cond_2
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v3
.end method

.method private buildGroupBody(Lorg/apache/james/mime4j/field/address/ASTgroup_body;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/MailboxList;
    .locals 5
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/ASTgroup_body;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Mailbox;>;"
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 89
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v1

    .line 91
    .local v1, "n":Lorg/apache/james/mime4j/field/address/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ASTmailbox;

    if-eqz v3, :cond_0

    .line 92
    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTmailbox;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    invoke-virtual {p0, v1, p2}, Lorg/apache/james/mime4j/field/address/Builder;->buildMailbox(Lorg/apache/james/mime4j/field/address/ASTmailbox;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_0
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v3

    .line 96
    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_1
    new-instance v3, Lorg/apache/james/mime4j/dom/address/MailboxList;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lorg/apache/james/mime4j/dom/address/MailboxList;-><init>(Ljava/util/List;Z)V

    return-object v3
.end method

.method private buildNameAddr(Lorg/apache/james/mime4j/field/address/ASTname_addr;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 9
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/ASTname_addr;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 115
    .local v1, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v3

    .line 117
    .local v3, "n":Lorg/apache/james/mime4j/field/address/Node;
    instance-of v5, v3, Lorg/apache/james/mime4j/field/address/ASTphrase;

    if-eqz v5, :cond_0

    .line 118
    check-cast v3, Lorg/apache/james/mime4j/field/address/ASTphrase;

    .end local v3    # "n":Lorg/apache/james/mime4j/field/address/Node;
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v3

    .line 124
    .restart local v3    # "n":Lorg/apache/james/mime4j/field/address/Node;
    instance-of v5, v3, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    if-eqz v5, :cond_1

    .line 126
    :try_start_0
    invoke-static {v4, p2}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 130
    check-cast v3, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .end local v3    # "n":Lorg/apache/james/mime4j/field/address/Node;
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v2

    .line 131
    .local v2, "mb":Lorg/apache/james/mime4j/dom/address/Mailbox;
    new-instance v5, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v6

    invoke-virtual {v2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-virtual {v2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v4, v6, v7, v8}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v5

    .line 120
    .end local v2    # "mb":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .end local v4    # "name":Ljava/lang/String;
    .restart local v3    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_0
    new-instance v5, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v5}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v5

    .line 127
    .restart local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v5, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v5}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v5
.end method

.method private buildRoute(Lorg/apache/james/mime4j/field/address/ASTroute;)Lorg/apache/james/mime4j/dom/address/DomainList;
    .locals 4
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/ASTroute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/ASTroute;->jjtGetNumChildren()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 160
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v1

    .line 162
    .local v1, "n":Lorg/apache/james/mime4j/field/address/Node;
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ASTdomain;

    if-eqz v3, :cond_0

    .line 163
    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTdomain;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_0
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v3

    .line 167
    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_1
    new-instance v3, Lorg/apache/james/mime4j/dom/address/DomainList;

    invoke-direct {v3, v2}, Lorg/apache/james/mime4j/dom/address/DomainList;-><init>(Ljava/util/List;)V

    return-object v3
.end method

.method private buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;
    .locals 4
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/SimpleNode;
    .param p2, "stripSpaces"    # Z

    .prologue
    .line 182
    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 183
    .local v0, "head":Lorg/apache/james/mime4j/field/address/Token;
    iget-object v2, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 184
    .local v2, "tail":Lorg/apache/james/mime4j/field/address/Token;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v1, "out":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    if-eq v0, v2, :cond_1

    .line 187
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 189
    if-nez p2, :cond_0

    .line 190
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/Token;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lorg/apache/james/mime4j/field/address/Builder;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-object v0
.end method


# virtual methods
.method public buildAddress(Lorg/apache/james/mime4j/field/address/ASTaddress;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Address;
    .locals 10
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/ASTaddress;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 59
    .local v1, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v3

    .line 60
    .local v3, "n":Lorg/apache/james/mime4j/field/address/Node;
    instance-of v6, v3, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    if-eqz v6, :cond_0

    .line 61
    check-cast v3, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .end local v3    # "n":Lorg/apache/james/mime4j/field/address/Node;
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v6

    .line 76
    :goto_0
    return-object v6

    .line 62
    .restart local v3    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_0
    instance-of v6, v3, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    if-eqz v6, :cond_1

    .line 63
    check-cast v3, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .end local v3    # "n":Lorg/apache/james/mime4j/field/address/Node;
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v6

    goto :goto_0

    .line 64
    .restart local v3    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_1
    instance-of v6, v3, Lorg/apache/james/mime4j/field/address/ASTphrase;

    if-eqz v6, :cond_4

    .line 65
    check-cast v3, Lorg/apache/james/mime4j/field/address/ASTphrase;

    .end local v3    # "n":Lorg/apache/james/mime4j/field/address/Node;
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/SimpleNode;Z)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v4

    .line 67
    .local v4, "n2":Lorg/apache/james/mime4j/field/address/Node;
    instance-of v6, v4, Lorg/apache/james/mime4j/field/address/ASTgroup_body;

    if-eqz v6, :cond_2

    .line 68
    new-instance v6, Lorg/apache/james/mime4j/dom/address/Group;

    check-cast v4, Lorg/apache/james/mime4j/field/address/ASTgroup_body;

    .end local v4    # "n2":Lorg/apache/james/mime4j/field/address/Node;
    invoke-direct {p0, v4, p2}, Lorg/apache/james/mime4j/field/address/Builder;->buildGroupBody(Lorg/apache/james/mime4j/field/address/ASTgroup_body;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/MailboxList;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lorg/apache/james/mime4j/dom/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/MailboxList;)V

    goto :goto_0

    .line 69
    .restart local v4    # "n2":Lorg/apache/james/mime4j/field/address/Node;
    :cond_2
    instance-of v6, v4, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    if-eqz v6, :cond_3

    .line 71
    :try_start_0
    invoke-static {v5, p2}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 75
    check-cast v4, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .end local v4    # "n2":Lorg/apache/james/mime4j/field/address/Node;
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v2

    .line 76
    .local v2, "mb":Lorg/apache/james/mime4j/dom/address/Mailbox;
    new-instance v6, Lorg/apache/james/mime4j/dom/address/Mailbox;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getRoute()Lorg/apache/james/mime4j/dom/address/DomainList;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-virtual {v2}, Lorg/apache/james/mime4j/dom/address/Mailbox;->getDomain()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v5, v7, v8, v9}, Lorg/apache/james/mime4j/dom/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/dom/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v2    # "mb":Lorg/apache/james/mime4j/dom/address/Mailbox;
    .restart local v4    # "n2":Lorg/apache/james/mime4j/field/address/Node;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 79
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    new-instance v6, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v6}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v6

    .line 82
    .end local v4    # "n2":Lorg/apache/james/mime4j/field/address/Node;
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_4
    new-instance v6, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v6}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v6
.end method

.method public buildAddressList(Lorg/apache/james/mime4j/field/address/ASTaddress_list;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/AddressList;
    .locals 6
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/ASTaddress_list;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/james/mime4j/dom/address/Address;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/ASTaddress_list;->jjtGetNumChildren()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 50
    invoke-virtual {p1, v2}, Lorg/apache/james/mime4j/field/address/ASTaddress_list;->jjtGetChild(I)Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTaddress;

    .line 51
    .local v1, "childNode":Lorg/apache/james/mime4j/field/address/ASTaddress;
    invoke-virtual {p0, v1, p2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddress(Lorg/apache/james/mime4j/field/address/ASTaddress;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Address;

    move-result-object v0

    .line 52
    .local v0, "address":Lorg/apache/james/mime4j/dom/address/Address;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "address":Lorg/apache/james/mime4j/dom/address/Address;
    .end local v1    # "childNode":Lorg/apache/james/mime4j/field/address/ASTaddress;
    :cond_0
    new-instance v4, Lorg/apache/james/mime4j/dom/address/AddressList;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lorg/apache/james/mime4j/dom/address/AddressList;-><init>(Ljava/util/List;Z)V

    return-object v4
.end method

.method public buildMailbox(Lorg/apache/james/mime4j/field/address/ASTmailbox;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;
    .locals 3
    .param p1, "node"    # Lorg/apache/james/mime4j/field/address/ASTmailbox;
    .param p2, "monitor"    # Lorg/apache/james/mime4j/codec/DecodeMonitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V

    .line 101
    .local v0, "it":Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v1

    .line 102
    .local v1, "n":Lorg/apache/james/mime4j/field/address/Node;
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    if-eqz v2, :cond_0

    .line 103
    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/ASTaddr_spec;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v2

    .line 107
    :goto_0
    return-object v2

    .line 104
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_0
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    if-eqz v2, :cond_1

    .line 105
    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/ASTangle_addr;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v2

    goto :goto_0

    .line 106
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_1
    instance-of v2, v1, Lorg/apache/james/mime4j/field/address/ASTname_addr;

    if-eqz v2, :cond_2

    .line 107
    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTname_addr;

    .end local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    invoke-direct {p0, v1, p2}, Lorg/apache/james/mime4j/field/address/Builder;->buildNameAddr(Lorg/apache/james/mime4j/field/address/ASTname_addr;Lorg/apache/james/mime4j/codec/DecodeMonitor;)Lorg/apache/james/mime4j/dom/address/Mailbox;

    move-result-object v2

    goto :goto_0

    .line 109
    .restart local v1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    :cond_2
    new-instance v2, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v2
.end method
