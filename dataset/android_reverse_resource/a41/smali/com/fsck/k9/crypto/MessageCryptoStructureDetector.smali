.class public Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;
.super Ljava/lang/Object;
.source "MessageCryptoStructureDetector.java"


# static fields
.field private static final APPLICATION_PGP:Ljava/lang/String; = "application/pgp"

.field private static final APPLICATION_PGP_ENCRYPTED:Ljava/lang/String; = "application/pgp-encrypted"

.field private static final APPLICATION_PGP_SIGNATURE:Ljava/lang/String; = "application/pgp-signature"

.field private static final MULTIPART_ENCRYPTED:Ljava/lang/String; = "multipart/encrypted"

.field private static final MULTIPART_SIGNED:Ljava/lang/String; = "multipart/signed"

.field private static final PGP_INLINE_SIGNED_START_MARKER:Ljava/lang/String; = "-----BEGIN PGP SIGNED MESSAGE-----"

.field private static final PGP_INLINE_START_MARKER:Ljava/lang/String; = "-----BEGIN PGP MESSAGE-----"

.field private static final PROTOCOL_PARAMETER:Ljava/lang/String; = "protocol"

.field private static final TEXT_LENGTH_FOR_INLINE_CHECK:I = 0x24

.field private static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findMultipartEncryptedParts(Lcom/fsck/k9/mail/Part;)Ljava/util/List;
    .locals 8
    .param p0, "startPart"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Part;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v2, "encryptedParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 116
    .local v6, "partsToCheck":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/fsck/k9/mail/Part;>;"
    invoke-virtual {v6, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 119
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Part;

    .line 120
    .local v5, "part":Lcom/fsck/k9/mail/Part;
    invoke-interface {v5}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 122
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    invoke-static {v5}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartMultipartEncrypted(Lcom/fsck/k9/mail/Part;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_1
    instance-of v7, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v7, :cond_0

    move-object v4, v0

    .line 128
    check-cast v4, Lcom/fsck/k9/mail/Multipart;

    .line 129
    .local v4, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_0

    .line 130
    invoke-virtual {v4, v3}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v1

    .line 131
    .local v1, "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-virtual {v6, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 136
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v1    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v3    # "i":I
    .end local v4    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .end local v5    # "part":Lcom/fsck/k9/mail/Part;
    :cond_2
    return-object v2
.end method

.method public static findMultipartSignedParts(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;)Ljava/util/List;
    .locals 10
    .param p0, "startPart"    # Lcom/fsck/k9/mail/Part;
    .param p1, "messageCryptoAnnotations"    # Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Part;",
            "Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v8, "signedParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 142
    .local v5, "partsToCheck":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/fsck/k9/mail/Part;>;"
    invoke-virtual {v5, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 145
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/Part;

    .line 146
    .local v4, "part":Lcom/fsck/k9/mail/Part;
    invoke-virtual {p1, v4}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->has(Lcom/fsck/k9/mail/Part;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 147
    invoke-virtual {p1, v4}, Lcom/fsck/k9/ui/crypto/MessageCryptoAnnotations;->get(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mailstore/CryptoResultAnnotation;

    move-result-object v7

    .line 148
    .local v7, "resultAnnotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    invoke-virtual {v7}, Lcom/fsck/k9/mailstore/CryptoResultAnnotation;->getReplacementData()Lcom/fsck/k9/mail/internet/MimeBodyPart;

    move-result-object v6

    .line 149
    .local v6, "replacementData":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    if-eqz v6, :cond_1

    .line 150
    move-object v4, v6

    .line 153
    .end local v6    # "replacementData":Lcom/fsck/k9/mail/internet/MimeBodyPart;
    .end local v7    # "resultAnnotation":Lcom/fsck/k9/mailstore/CryptoResultAnnotation;
    :cond_1
    invoke-interface {v4}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 155
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    invoke-static {v4}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartMultipartSigned(Lcom/fsck/k9/mail/Part;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 156
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_2
    instance-of v9, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v9, :cond_0

    move-object v3, v0

    .line 161
    check-cast v3, Lcom/fsck/k9/mail/Multipart;

    .line 162
    .local v3, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 163
    invoke-virtual {v3, v2}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v1

    .line 164
    .local v1, "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-virtual {v5, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 169
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v1    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v2    # "i":I
    .end local v3    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .end local v4    # "part":Lcom/fsck/k9/mail/Part;
    :cond_3
    return-object v8
.end method

.method public static findPgpInlineParts(Lcom/fsck/k9/mail/Part;)Ljava/util/List;
    .locals 8
    .param p0, "startPart"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Part;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v3, "inlineParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 175
    .local v6, "partsToCheck":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/fsck/k9/mail/Part;>;"
    invoke-virtual {v6, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 178
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fsck/k9/mail/Part;

    .line 179
    .local v5, "part":Lcom/fsck/k9/mail/Part;
    invoke-interface {v5}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 181
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    invoke-static {v5}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartPgpInlineEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 182
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :cond_1
    instance-of v7, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v7, :cond_0

    move-object v4, v0

    .line 187
    check-cast v4, Lcom/fsck/k9/mail/Multipart;

    .line 188
    .local v4, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v4}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 189
    invoke-virtual {v4, v2}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v1

    .line 190
    .local v1, "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-virtual {v6, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 195
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v1    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v2    # "i":I
    .end local v4    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .end local v5    # "part":Lcom/fsck/k9/mail/Part;
    :cond_2
    return-object v3
.end method

.method public static findPrimaryEncryptedOrSignedPart(Lcom/fsck/k9/mail/Part;Ljava/util/List;)Lcom/fsck/k9/mail/Part;
    .locals 2
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Part;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;)",
            "Lcom/fsck/k9/mail/Part;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "outputExtraParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    invoke-static {p0}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    invoke-static {p0}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->findPrimaryPartInAlternative(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    move-result-object v0

    .line 52
    .local v0, "foundPart":Lcom/fsck/k9/mail/Part;
    if-nez v0, :cond_0

    .line 56
    invoke-static {p0, p1}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->findPrimaryPartInMixed(Lcom/fsck/k9/mail/Part;Ljava/util/List;)Lcom/fsck/k9/mail/Part;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findPrimaryPartInAlternative(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;
    .locals 5
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 98
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    const-string v4, "multipart/alternative"

    invoke-interface {p0, v4}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 99
    check-cast v2, Lcom/fsck/k9/mail/Multipart;

    .line 100
    .local v2, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v3

    .line 110
    .end local v2    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_0
    :goto_0
    return-object v1

    .line 104
    .restart local v2    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v1

    .line 105
    .local v1, "firstBodyPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-static {v1}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartPgpInlineEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z

    move-result v4

    if-nez v4, :cond_0

    .end local v1    # "firstBodyPart":Lcom/fsck/k9/mail/BodyPart;
    .end local v2    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_2
    move-object v1, v3

    .line 110
    goto :goto_0
.end method

.method private static findPrimaryPartInMixed(Lcom/fsck/k9/mail/Part;Ljava/util/List;)Lcom/fsck/k9/mail/Part;
    .locals 8
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Part;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;)",
            "Lcom/fsck/k9/mail/Part;"
        }
    .end annotation

    .prologue
    .local p1, "outputExtraParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 66
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 68
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    const-string v7, "multipart/mixed"

    invoke-interface {p0, v7}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    instance-of v7, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    .line 69
    .local v4, "isMultipartMixed":Z
    :goto_0
    if-nez v4, :cond_2

    .line 93
    :cond_0
    return-object v2

    .end local v4    # "isMultipartMixed":Z
    :cond_1
    move v4, v6

    .line 68
    goto :goto_0

    .restart local v4    # "isMultipartMixed":Z
    :cond_2
    move-object v5, v0

    .line 73
    check-cast v5, Lcom/fsck/k9/mail/Multipart;

    .line 74
    .local v5, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v7

    if-eqz v7, :cond_0

    .line 78
    invoke-virtual {v5, v6}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v1

    .line 81
    .local v1, "firstBodyPart":Lcom/fsck/k9/mail/BodyPart;
    invoke-static {v1}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 82
    move-object v2, v1

    .line 87
    .local v2, "foundPart":Lcom/fsck/k9/mail/Part;
    :goto_1
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 88
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    invoke-virtual {v5}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 89
    invoke-virtual {v5, v3}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 84
    .end local v2    # "foundPart":Lcom/fsck/k9/mail/Part;
    .end local v3    # "i":I
    :cond_3
    invoke-static {v1}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->findPrimaryPartInAlternative(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Part;

    move-result-object v2

    .restart local v2    # "foundPart":Lcom/fsck/k9/mail/Part;
    goto :goto_1
.end method

.method public static getSignatureData(Lcom/fsck/k9/mail/Part;)[B
    .locals 5
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {p0}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartMultipartSigned(Lcom/fsck/k9/mail/Part;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 201
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v4, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 202
    check-cast v2, Lcom/fsck/k9/mail/Multipart;

    .line 203
    .local v2, "multi":Lcom/fsck/k9/mail/Multipart;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v3

    .line 204
    .local v3, "signatureBody":Lcom/fsck/k9/mail/BodyPart;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3}, Lcom/fsck/k9/mail/BodyPart;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/fsck/k9/mail/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 206
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 210
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "multi":Lcom/fsck/k9/mail/Multipart;
    .end local v3    # "signatureBody":Lcom/fsck/k9/mail/BodyPart;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isMultipartEncryptedOpenPgpProtocol(Lcom/fsck/k9/mail/Part;)Z
    .locals 3
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 258
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/encrypted"

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Part is not multipart/encrypted!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "protocol"

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "protocolParameter":Ljava/lang/String;
    const-string v1, "application/pgp-encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isMultipartSignedOpenPgpProtocol(Lcom/fsck/k9/mail/Part;)Z
    .locals 3
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 267
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/signed"

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Part is not multipart/signed!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "protocol"

    invoke-static {v1, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "protocolParameter":Ljava/lang/String;
    const-string v1, "application/pgp-signature"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isPartEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z
    .locals 1
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartMultipartEncrypted(Lcom/fsck/k9/mail/Part;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartMultipartSigned(Lcom/fsck/k9/mail/Part;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/fsck/k9/crypto/MessageCryptoStructureDetector;->isPartPgpInlineEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPartMultipartEncrypted(Lcom/fsck/k9/mail/Part;)Z
    .locals 8
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 238
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "multipart/encrypted"

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v5

    .line 241
    :cond_1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v6

    instance-of v6, v6, Lcom/fsck/k9/mail/internet/MimeMultipart;

    if-eqz v6, :cond_0

    .line 244
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 245
    .local v1, "mimeMultipart":Lcom/fsck/k9/mail/internet/MimeMultipart;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getCount()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 249
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "protocol"

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "protocolParameter":Ljava/lang/String;
    if-nez v3, :cond_3

    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/mail/BodyPart;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v6

    if-nez v6, :cond_3

    move v0, v4

    .line 253
    .local v0, "dataUnavailable":Z
    :goto_1
    invoke-virtual {v1, v5}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/mail/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 254
    .local v2, "protocolMatches":Z
    if-nez v0, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    move v5, v4

    goto :goto_0

    .end local v0    # "dataUnavailable":Z
    .end local v2    # "protocolMatches":Z
    :cond_3
    move v0, v5

    .line 252
    goto :goto_1
.end method

.method private static isPartMultipartSigned(Lcom/fsck/k9/mail/Part;)Z
    .locals 8
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 218
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "multipart/signed"

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v5

    .line 221
    :cond_1
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v6

    instance-of v6, v6, Lcom/fsck/k9/mail/internet/MimeMultipart;

    if-eqz v6, :cond_0

    .line 224
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/mail/internet/MimeMultipart;

    .line 225
    .local v1, "mimeMultipart":Lcom/fsck/k9/mail/internet/MimeMultipart;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getCount()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 229
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "protocol"

    invoke-static {v6, v7}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "protocolParameter":Ljava/lang/String;
    if-nez v3, :cond_3

    invoke-virtual {v1, v5}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/mail/BodyPart;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v6

    if-nez v6, :cond_3

    move v0, v4

    .line 233
    .local v0, "dataUnavailable":Z
    :goto_1
    invoke-virtual {v1, v4}, Lcom/fsck/k9/mail/internet/MimeMultipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/mail/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 234
    .local v2, "protocolMatches":Z
    if-nez v0, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    move v5, v4

    goto :goto_0

    .end local v0    # "dataUnavailable":Z
    .end local v2    # "protocolMatches":Z
    :cond_3
    move v0, v5

    .line 232
    goto :goto_1
.end method

.method public static isPartPgpInlineEncrypted(Lcom/fsck/k9/mail/Part;)Z
    .locals 4
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 289
    if-nez p0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return v1

    .line 292
    :cond_1
    const-string v2, "text/plain"

    invoke-interface {p0, v2}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "application/pgp"

    invoke-interface {p0, v2}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    :cond_2
    const-wide/16 v2, 0x24

    invoke-static {p0, v2, v3}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 300
    const-string v1, "-----BEGIN PGP MESSAGE-----"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method static isPartPgpInlineEncryptedOrSigned(Lcom/fsck/k9/mail/Part;)Z
    .locals 4
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 277
    const-string v2, "text/plain"

    invoke-interface {p0, v2}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "application/pgp"

    invoke-interface {p0, v2}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 280
    :cond_1
    const-wide/16 v2, 0x24

    invoke-static {p0, v2, v3}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v2, "-----BEGIN PGP MESSAGE-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "-----BEGIN PGP SIGNED MESSAGE-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
