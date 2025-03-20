.class Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;
.super Ljava/lang/Object;
.source "MimeMessage.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/internet/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MimeMessageBuilder"
.end annotation


# instance fields
.field private final bodyFactory:Lcom/fsck/k9/mail/BodyFactory;

.field private final stack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fsck/k9/mail/internet/MimeMessage;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/BodyFactory;)V
    .locals 1
    .param p2, "bodyFactory"    # Lcom/fsck/k9/mail/BodyFactory;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    .line 532
    iput-object p2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->bodyFactory:Lcom/fsck/k9/mail/BodyFactory;

    .line 533
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 538
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_0
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/stream/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "bd"    # Lorg/apache/james/mime4j/stream/BodyDescriptor;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 586
    const-class v1, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 587
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->bodyFactory:Lcom/fsck/k9/mail/BodyFactory;

    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lcom/fsck/k9/mail/BodyFactory;->createBody(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 588
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Part;

    invoke-interface {v1, v0}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 589
    return-void
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 625
    const-class v0, Lcom/fsck/k9/mail/BodyPart;

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 626
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 627
    return-void
.end method

.method public endHeader()V
    .locals 1

    .prologue
    .line 569
    const-class v0, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 570
    return-void
.end method

.method public endMessage()V
    .locals 1

    .prologue
    .line 558
    const-class v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 559
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 560
    return-void
.end method

.method public endMultipart()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 593
    const-class v6, Lcom/fsck/k9/mail/Multipart;

    invoke-direct {p0, v6}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 594
    iget-object v6, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Multipart;

    .line 596
    .local v2, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 597
    .local v0, "hasNoBodyParts":Z
    :goto_0
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Multipart;->getEpilogue()[B

    move-result-object v6

    if-nez v6, :cond_2

    move v1, v4

    .line 598
    .local v1, "hasNoEpilogue":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 604
    const-class v4, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 605
    iget-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fsck/k9/mail/Part;

    .line 606
    .local v3, "part":Lcom/fsck/k9/mail/Part;
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 608
    .end local v3    # "part":Lcom/fsck/k9/mail/Part;
    :cond_0
    return-void

    .end local v0    # "hasNoBodyParts":Z
    .end local v1    # "hasNoEpilogue":Z
    :cond_1
    move v0, v5

    .line 596
    goto :goto_0

    .restart local v0    # "hasNoBodyParts":Z
    :cond_2
    move v1, v5

    .line 597
    goto :goto_1
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    const-class v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 640
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 641
    .local v0, "epilogue":Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 642
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setEpilogue([B)V

    .line 643
    return-void
.end method

.method public field(Lorg/apache/james/mime4j/stream/Field;)V
    .locals 3
    .param p1, "parsedField"    # Lorg/apache/james/mime4j/stream/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 652
    const-class v2, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 653
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/Field;->getRaw()Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, "raw":Ljava/lang/String;
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    invoke-interface {v2, v0, v1}, Lcom/fsck/k9/mail/Part;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    const-class v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 632
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 633
    .local v0, "preamble":Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 634
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setPreamble([B)V

    .line 635
    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 612
    const-class v2, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 615
    :try_start_0
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>()V

    .line 616
    .local v0, "bodyPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-virtual {v2, v0}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    .line 617
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    return-void

    .line 618
    .end local v0    # "bodyPart":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    :catch_0
    move-exception v1

    .line 619
    .local v1, "me":Lcom/fsck/k9/mail/MessagingException;
    new-instance v2, Lorg/apache/james/mime4j/MimeException;

    invoke-direct {v2, v1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startHeader()V
    .locals 1

    .prologue
    .line 564
    const-class v0, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 565
    return-void
.end method

.method public startMessage()V
    .locals 4

    .prologue
    .line 544
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 554
    :goto_0
    return-void

    .line 547
    :cond_0
    const-class v2, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 548
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Part;

    .line 550
    .local v1, "part":Lcom/fsck/k9/mail/Part;
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    .line 551
    .local v0, "m":Lcom/fsck/k9/mail/internet/MimeMessage;
    invoke-interface {v1, v0}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 552
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startMultipart(Lorg/apache/james/mime4j/stream/BodyDescriptor;)V
    .locals 5
    .param p1, "bd"    # Lorg/apache/james/mime4j/stream/BodyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    .line 574
    const-class v4, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v4}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 576
    iget-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Part;

    .line 577
    .local v1, "e":Lcom/fsck/k9/mail/Part;
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 578
    .local v2, "mimeType":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/james/mime4j/stream/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "boundary":Ljava/lang/String;
    new-instance v3, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {v3, v2, v0}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .local v3, "multiPart":Lcom/fsck/k9/mail/internet/MimeMultipart;
    invoke-interface {v1, v3}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    .line 581
    iget-object v4, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 582
    return-void
.end method
