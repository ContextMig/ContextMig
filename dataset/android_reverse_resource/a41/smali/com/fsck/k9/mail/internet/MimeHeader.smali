.class public Lcom/fsck/k9/mail/internet/MimeHeader;
.super Ljava/lang/Object;
.source "MimeHeader.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    }
.end annotation


# static fields
.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ID:Ljava/lang/String; = "Content-ID"

.field public static final HEADER_CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"


# instance fields
.field private mCharset:Ljava/lang/String;

.field private mFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/MimeHeader$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mCharset:Ljava/lang/String;

    return-void
.end method

.method private hasToBeEncoded(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 147
    .local v0, "c":C
    const/16 v2, 0x20

    if-lt v0, v2, :cond_0

    const/16 v2, 0x7e

    if-ge v2, v0, :cond_1

    :cond_0
    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    .line 149
    const/4 v2, 0x1

    .line 153
    .end local v0    # "c":C
    :goto_1
    return v2

    .line 145
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private writeNameValueField(Ljava/io/BufferedWriter;Lcom/fsck/k9/mail/internet/MimeHeader$Field;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/BufferedWriter;
    .param p2, "field"    # Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/internet/MimeHeader;->hasToBeEncoded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "charset":Ljava/nio/charset/Charset;
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mCharset:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mCharset:Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 118
    :cond_0
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    :cond_1
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 122
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method private writeNameValueField(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/internet/MimeHeader$Field;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "field"    # Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    .prologue
    .line 127
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/fsck/k9/mail/internet/MimeHeader;->hasToBeEncoded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, "charset":Ljava/nio/charset/Charset;
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mCharset:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mCharset:Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 135
    :cond_0
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/fsck/k9/mail/internet/EncoderUtil;->encodeEncodedWord(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    :cond_1
    invoke-virtual {p2}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p2}, Lcom/fsck/k9/mail/internet/MimeUtility;->foldAndEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->newNameValueField(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    move-result-object v0

    .line 37
    .local v0, "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method addRawHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "raw"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->newRawField(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    move-result-object v0

    .line 42
    .local v0, "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    iget-object v1, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    return-void
.end method

.method public clone()Lcom/fsck/k9/mail/internet/MimeHeader;
    .locals 4

    .prologue
    .line 225
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/internet/MimeHeader;

    .line 226
    .local v1, "header":Lcom/fsck/k9/mail/internet/MimeHeader;
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    return-object v1

    .line 228
    .end local v1    # "header":Lcom/fsck/k9/mail/internet/MimeHeader;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/fsck/k9/mail/internet/MimeHeader;->clone()Lcom/fsck/k9/mail/internet/MimeHeader;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "header":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 32
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    .line 66
    .local v0, "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v0    # "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public getHeaderNames()Ljava/util/Set;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 56
    .local v1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    .line 57
    .local v0, "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v0    # "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    :cond_0
    return-object v1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "removeFields":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/MimeHeader$Field;>;"
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    .line 76
    .local v0, "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    .end local v0    # "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    :cond_1
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 81
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mCharset:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/internet/MimeHeader;->removeHeader(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    .line 86
    .local v1, "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->hasRawData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getRaw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :goto_1
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MimeHeader;->writeNameValueField(Ljava/lang/StringBuilder;Lcom/fsck/k9/mail/internet/MimeHeader$Field;)V

    goto :goto_1

    .line 93
    .end local v1    # "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 98
    .local v1, "writer":Ljava/io/BufferedWriter;
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeHeader;->mFields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/internet/MimeHeader$Field;

    .line 99
    .local v0, "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->hasRawData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/MimeHeader$Field;->getRaw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 104
    :goto_1
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/fsck/k9/mail/internet/MimeHeader;->writeNameValueField(Ljava/io/BufferedWriter;Lcom/fsck/k9/mail/internet/MimeHeader$Field;)V

    goto :goto_1

    .line 106
    .end local v0    # "field":Lcom/fsck/k9/mail/internet/MimeHeader$Field;
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 107
    return-void
.end method
