.class public Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;
.super Ljava/lang/Object;
.source "MessageCryptoAnnotations.java"


# instance fields
.field private annotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            "Lcom/fsck/k9/mailstore/CryptoResultAnnotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->annotations:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public findKeyForAnnotationWithReplacementPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;
    .locals 3
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->annotations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    invoke-virtual {v1}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getReplacementData()Lcom/fsck/k9/mail/internet/MimeBodyPart;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 32
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/Part;

    .line 35
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    .locals 1
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->annotations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    return-object v0
.end method

.method public has(Lcom/fsck/k9/mail/Part;)Z
    .locals 1
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->annotations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->annotations:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mailstore/CryptoResultAnnotation;)V
    .locals 1
    .param p1, "part"    # Lcom/fsck/k9/mail/Part;
    .param p2, "annotation"    # Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->annotations:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method
