.class Lcom/fsck/k9/mail/store/webdav/WebDavHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WebDavHandler.java"


# instance fields
.field private mDataSet:Lcom/fsck/k9/mail/store/webdav/DataSet;

.field private final mOpenTags:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 13
    new-instance v0, Lcom/fsck/k9/mail/store/webdav/DataSet;

    invoke-direct {v0}, Lcom/fsck/k9/mail/store/webdav/DataSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/webdav/DataSet;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;->mOpenTags:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 48
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 49
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/webdav/DataSet;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;->mOpenTags:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/fsck/k9/mail/store/webdav/DataSet;->addValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;->mOpenTags:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 41
    const-string v0, "response"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/webdav/DataSet;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/webdav/DataSet;->finish()V

    .line 44
    :cond_0
    return-void
.end method

.method public getDataSet()Lcom/fsck/k9/mail/store/webdav/DataSet;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/webdav/DataSet;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/fsck/k9/mail/store/webdav/DataSet;

    invoke-direct {v0}, Lcom/fsck/k9/mail/store/webdav/DataSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/webdav/DataSet;

    .line 23
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fsck/k9/mail/store/webdav/WebDavHandler;->mOpenTags:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 34
    return-void
.end method
