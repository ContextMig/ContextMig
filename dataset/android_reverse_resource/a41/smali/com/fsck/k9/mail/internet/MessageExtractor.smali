.class public Lcom/fsck/k9/mail/internet/MessageExtractor;
.super Ljava/lang/Object;
.source "MessageExtractor.java"


# static fields
.field public static final NO_TEXT_SIZE_LIMIT:J = -0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectAttachments(Lcom/fsck/k9/mail/Message;)Ljava/util/List;
    .locals 4
    .param p0, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Message;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 234
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v2, v0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    return-object v0

    .line 237
    .end local v0    # "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/fsck/k9/mail/MessagingException;

    const-string v3, "Couldn\'t collect attachment parts"

    invoke-direct {v2, v3, v1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static collectTextParts(Lcom/fsck/k9/mail/Message;)Ljava/util/Set;
    .locals 3
    .param p0, "message"    # Lcom/fsck/k9/mail/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Message;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 249
    :try_start_0
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextParts(Lcom/fsck/k9/mail/Part;)Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/fsck/k9/mail/MessagingException;

    const-string v2, "Couldn\'t extract viewable parts"

    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static findAttachments(Lcom/fsck/k9/mail/Multipart;Ljava/util/Set;Ljava/util/List;)V
    .locals 5
    .param p0, "multipart"    # Lcom/fsck/k9/mail/Multipart;
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Multipart;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p1, "knownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Part;>;"
    .local p2, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 403
    .local v2, "part":Lcom/fsck/k9/mail/Part;
    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 404
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v4, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 405
    check-cast v1, Lcom/fsck/k9/mail/Multipart;

    .line 406
    .local v1, "innerMultipart":Lcom/fsck/k9/mail/Multipart;
    invoke-static {v1, p1, p2}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findAttachments(Lcom/fsck/k9/mail/Multipart;Ljava/util/Set;Ljava/util/List;)V

    goto :goto_0

    .line 407
    .end local v1    # "innerMultipart":Lcom/fsck/k9/mail/Multipart;
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 408
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v2    # "part":Lcom/fsck/k9/mail/Part;
    :cond_2
    return-void
.end method

.method private static findHtmlPart(Lcom/fsck/k9/mail/Multipart;Ljava/util/Set;Ljava/util/List;Z)Ljava/util/List;
    .locals 12
    .param p0, "multipart"    # Lcom/fsck/k9/mail/Multipart;
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "directChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Multipart;",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/Viewable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p1, "knownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Part;>;"
    .local p2, "outputNonViewableParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    const/4 v8, 0x0

    .line 339
    if-eqz p2, :cond_1

    const/4 v6, 0x1

    .line 340
    .local v6, "saveNonViewableParts":Z
    :goto_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v7, "viewables":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    const/4 v5, 0x0

    .line 343
    .local v5, "partFound":Z
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/Part;

    .line 344
    .local v4, "part":Lcom/fsck/k9/mail/Part;
    invoke-interface {v4}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 345
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v10, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v10, :cond_3

    move-object v3, v0

    .line 346
    check-cast v3, Lcom/fsck/k9/mail/Multipart;

    .line 348
    .local v3, "innerMultipart":Lcom/fsck/k9/mail/Multipart;
    if-eqz p3, :cond_2

    if-eqz v5, :cond_2

    .line 349
    if-eqz v6, :cond_0

    .line 351
    invoke-static {v3, p1, p2}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findAttachments(Lcom/fsck/k9/mail/Multipart;Ljava/util/Set;Ljava/util/List;)V

    goto :goto_1

    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v3    # "innerMultipart":Lcom/fsck/k9/mail/Multipart;
    .end local v4    # "part":Lcom/fsck/k9/mail/Part;
    .end local v5    # "partFound":Z
    .end local v6    # "saveNonViewableParts":Z
    .end local v7    # "viewables":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :cond_1
    move v6, v8

    .line 339
    goto :goto_0

    .line 366
    .restart local v0    # "body":Lcom/fsck/k9/mail/Body;
    .restart local v3    # "innerMultipart":Lcom/fsck/k9/mail/Multipart;
    .restart local v4    # "part":Lcom/fsck/k9/mail/Part;
    .restart local v5    # "partFound":Z
    .restart local v6    # "saveNonViewableParts":Z
    .restart local v7    # "viewables":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :cond_2
    invoke-static {v3, p1, p2, v8}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findHtmlPart(Lcom/fsck/k9/mail/Multipart;Ljava/util/Set;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    .line 369
    .local v2, "htmlViewables":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 370
    const/4 v5, 0x1

    .line 371
    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 374
    .end local v2    # "htmlViewables":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .end local v3    # "innerMultipart":Lcom/fsck/k9/mail/Multipart;
    :cond_3
    if-eqz p3, :cond_4

    if-nez v5, :cond_5

    :cond_4
    invoke-static {v4}, Lcom/fsck/k9/mail/internet/MessageExtractor;->isPartTextualBody(Lcom/fsck/k9/mail/Part;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 375
    invoke-interface {v4}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "text/html"

    invoke-static {v10, v11}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 376
    new-instance v1, Lcom/fsck/k9/mail/internet/Viewable$Html;

    invoke-direct {v1, v4}, Lcom/fsck/k9/mail/internet/Viewable$Html;-><init>(Lcom/fsck/k9/mail/Part;)V

    .line 377
    .local v1, "html":Lcom/fsck/k9/mail/internet/Viewable$Html;
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    const/4 v5, 0x1

    .line 379
    goto :goto_1

    .end local v1    # "html":Lcom/fsck/k9/mail/internet/Viewable$Html;
    :cond_5
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 380
    if-eqz v6, :cond_0

    .line 382
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 387
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v4    # "part":Lcom/fsck/k9/mail/Part;
    :cond_6
    return-object v7
.end method

.method private static findTextPart(Lcom/fsck/k9/mail/Multipart;Z)Ljava/util/List;
    .locals 9
    .param p0, "multipart"    # Lcom/fsck/k9/mail/Multipart;
    .param p1, "directChild"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Multipart;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/Viewable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v5, "viewables":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/mail/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 289
    .local v2, "part":Lcom/fsck/k9/mail/Part;
    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 290
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v7, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v7, :cond_2

    move-object v1, v0

    .line 291
    check-cast v1, Lcom/fsck/k9/mail/Multipart;

    .line 304
    .local v1, "innerMultipart":Lcom/fsck/k9/mail/Multipart;
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findTextPart(Lcom/fsck/k9/mail/Multipart;Z)Ljava/util/List;

    move-result-object v4

    .line 306
    .local v4, "textViewables":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 307
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    if-eqz p1, :cond_0

    .line 320
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v1    # "innerMultipart":Lcom/fsck/k9/mail/Multipart;
    .end local v2    # "part":Lcom/fsck/k9/mail/Part;
    .end local v4    # "textViewables":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :cond_1
    :goto_0
    return-object v5

    .line 312
    .restart local v0    # "body":Lcom/fsck/k9/mail/Body;
    .restart local v2    # "part":Lcom/fsck/k9/mail/Part;
    :cond_2
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/MessageExtractor;->isPartTextualBody(Lcom/fsck/k9/mail/Part;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/plain"

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 313
    new-instance v3, Lcom/fsck/k9/mail/internet/Viewable$Text;

    invoke-direct {v3, v2}, Lcom/fsck/k9/mail/internet/Viewable$Text;-><init>(Lcom/fsck/k9/mail/Part;)V

    .line 314
    .local v3, "text":Lcom/fsck/k9/mail/internet/Viewable$Text;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    if-eqz p1, :cond_0

    goto :goto_0
.end method

.method public static findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Part;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/Viewable;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "outputViewableParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .local p2, "outputNonViewableParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    if-nez p2, :cond_0

    const/4 v11, 0x1

    .line 140
    .local v11, "skipSavingNonViewableParts":Z
    :goto_0
    if-nez p1, :cond_1

    const/4 v12, 0x1

    .line 141
    .local v12, "skipSavingViewableParts":Z
    :goto_1
    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    .line 142
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "method was called but no output is to be collected - this a bug!"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 139
    .end local v11    # "skipSavingNonViewableParts":Z
    .end local v12    # "skipSavingViewableParts":Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 140
    .restart local v11    # "skipSavingNonViewableParts":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 145
    .restart local v12    # "skipSavingViewableParts":Z
    :cond_2
    invoke-interface/range {p0 .. p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v3

    .line 146
    .local v3, "body":Lcom/fsck/k9/mail/Body;
    instance-of v15, v3, Lcom/fsck/k9/mail/Multipart;

    if-eqz v15, :cond_8

    move-object v10, v3

    .line 147
    check-cast v10, Lcom/fsck/k9/mail/Multipart;

    .line 148
    .local v10, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-interface/range {p0 .. p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v15

    const-string v16, "multipart/alternative"

    invoke-static/range {v15 .. v16}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 153
    const/4 v15, 0x1

    invoke-static {v10, v15}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findTextPart(Lcom/fsck/k9/mail/Multipart;Z)Ljava/util/List;

    move-result-object v13

    .line 155
    .local v13, "text":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    invoke-static {v13}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getParts(Ljava/util/List;)Ljava/util/Set;

    move-result-object v7

    .line 156
    .local v7, "knownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Part;>;"
    const/4 v15, 0x1

    move-object/from16 v0, p2

    invoke-static {v10, v7, v0, v15}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findHtmlPart(Lcom/fsck/k9/mail/Multipart;Ljava/util/Set;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v6

    .line 158
    .local v6, "html":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    if-eqz v12, :cond_4

    .line 218
    .end local v6    # "html":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .end local v7    # "knownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Part;>;"
    .end local v10    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .end local v13    # "text":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :cond_3
    :goto_2
    return-void

    .line 161
    .restart local v6    # "html":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .restart local v7    # "knownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Part;>;"
    .restart local v10    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .restart local v13    # "text":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3

    .line 162
    :cond_5
    new-instance v2, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    invoke-direct {v2, v13, v6}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 163
    .local v2, "alternative":Lcom/fsck/k9/mail/internet/Viewable$Alternative;
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 165
    .end local v2    # "alternative":Lcom/fsck/k9/mail/internet/Viewable$Alternative;
    .end local v6    # "html":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    .end local v7    # "knownTextParts":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Part;>;"
    .end local v13    # "text":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    :cond_6
    invoke-interface/range {p0 .. p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v15

    const-string v16, "multipart/signed"

    invoke-static/range {v15 .. v16}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 166
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Multipart;->getCount()I

    move-result v15

    if-lez v15, :cond_3

    .line 167
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Lcom/fsck/k9/mail/Multipart;->getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;

    move-result-object v4

    .line 168
    .local v4, "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v0, v1}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 172
    .end local v4    # "bodyPart":Lcom/fsck/k9/mail/BodyPart;
    :cond_7
    invoke-virtual {v10}, Lcom/fsck/k9/mail/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fsck/k9/mail/Part;

    .line 173
    .local v4, "bodyPart":Lcom/fsck/k9/mail/Part;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v4, v0, v1}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/List;)V

    goto :goto_3

    .line 176
    .end local v4    # "bodyPart":Lcom/fsck/k9/mail/Part;
    .end local v10    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_8
    instance-of v15, v3, Lcom/fsck/k9/mail/Message;

    if-eqz v15, :cond_9

    const-string v15, "attachment"

    .line 177
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getContentDisposition(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 178
    if-nez v12, :cond_3

    move-object v8, v3

    .line 185
    check-cast v8, Lcom/fsck/k9/mail/Message;

    .line 188
    .local v8, "message":Lcom/fsck/k9/mail/Message;
    new-instance v15, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/fsck/k9/mail/internet/Viewable$MessageHeader;-><init>(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Message;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v8, v0, v1}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 192
    .end local v8    # "message":Lcom/fsck/k9/mail/Message;
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->isPartTextualBody(Lcom/fsck/k9/mail/Part;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 193
    if-nez v12, :cond_3

    .line 196
    invoke-interface/range {p0 .. p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v9

    .line 198
    .local v9, "mimeType":Ljava/lang/String;
    const-string v15, "text/plain"

    invoke-static {v9, v15}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 199
    invoke-interface/range {p0 .. p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/fsck/k9/mail/internet/FlowedMessageUtils;->isFormatFlowed(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 200
    invoke-interface/range {p0 .. p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/fsck/k9/mail/internet/FlowedMessageUtils;->isDelSp(Ljava/lang/String;)Z

    move-result v5

    .line 201
    .local v5, "delSp":Z
    new-instance v14, Lcom/fsck/k9/mail/internet/Viewable$Flowed;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5}, Lcom/fsck/k9/mail/internet/Viewable$Flowed;-><init>(Lcom/fsck/k9/mail/Part;Z)V

    .line 208
    .end local v5    # "delSp":Z
    .local v14, "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :goto_4
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 203
    .end local v14    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_a
    new-instance v14, Lcom/fsck/k9/mail/internet/Viewable$Text;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/fsck/k9/mail/internet/Viewable$Text;-><init>(Lcom/fsck/k9/mail/Part;)V

    .restart local v14    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    goto :goto_4

    .line 206
    .end local v14    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_b
    new-instance v14, Lcom/fsck/k9/mail/internet/Viewable$Html;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/fsck/k9/mail/internet/Viewable$Html;-><init>(Lcom/fsck/k9/mail/Part;)V

    .restart local v14    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    goto :goto_4

    .line 209
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v14    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_c
    invoke-interface/range {p0 .. p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v15

    const-string v16, "application/pgp-signature"

    invoke-static/range {v15 .. v16}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 212
    if-nez v11, :cond_3

    .line 216
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private static getContentDisposition(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
    .locals 2
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    const/4 v1, 0x0

    .line 471
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "disposition":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 473
    invoke-static {v0, v1}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    :cond_0
    return-object v1
.end method

.method private static getMessageFromPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Message;
    .locals 3
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    const/4 v1, 0x0

    .line 256
    :goto_0
    if-eqz p0, :cond_3

    .line 257
    instance-of v2, p0, Lcom/fsck/k9/mail/Message;

    if-eqz v2, :cond_0

    .line 258
    check-cast p0, Lcom/fsck/k9/mail/Message;

    .line 269
    .end local p0    # "part":Lcom/fsck/k9/mail/Part;
    .local v0, "multipart":Lcom/fsck/k9/mail/Multipart;
    :goto_1
    return-object p0

    .line 260
    .end local v0    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .restart local p0    # "part":Lcom/fsck/k9/mail/Part;
    :cond_0
    instance-of v2, p0, Lcom/fsck/k9/mail/BodyPart;

    if-nez v2, :cond_1

    move-object p0, v1

    .line 261
    goto :goto_1

    .line 263
    :cond_1
    check-cast p0, Lcom/fsck/k9/mail/BodyPart;

    .end local p0    # "part":Lcom/fsck/k9/mail/Part;
    invoke-virtual {p0}, Lcom/fsck/k9/mail/BodyPart;->getParent()Lcom/fsck/k9/mail/Multipart;

    move-result-object v0

    .line 264
    .restart local v0    # "multipart":Lcom/fsck/k9/mail/Multipart;
    if-nez v0, :cond_2

    move-object p0, v1

    .line 265
    goto :goto_1

    .line 267
    :cond_2
    invoke-virtual {v0}, Lcom/fsck/k9/mail/Multipart;->getParent()Lcom/fsck/k9/mail/Part;

    move-result-object p0

    .line 268
    .restart local p0    # "part":Lcom/fsck/k9/mail/Part;
    goto :goto_0

    .end local v0    # "multipart":Lcom/fsck/k9/mail/Multipart;
    :cond_3
    move-object p0, v1

    .line 269
    goto :goto_1
.end method

.method private static getParts(Ljava/util/List;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/internet/Viewable;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "viewables":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 428
    .local v1, "parts":Ljava/util/Set;, "Ljava/util/Set<Lcom/fsck/k9/mail/Part;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/internet/Viewable;

    .line 429
    .local v2, "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    instance-of v4, v2, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    if-eqz v4, :cond_1

    .line 430
    check-cast v2, Lcom/fsck/k9/mail/internet/Viewable$Textual;

    .end local v2    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    invoke-virtual {v2}, Lcom/fsck/k9/mail/internet/Viewable$Textual;->getPart()Lcom/fsck/k9/mail/Part;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 431
    .restart local v2    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_1
    instance-of v4, v2, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 432
    check-cast v0, Lcom/fsck/k9/mail/internet/Viewable$Alternative;

    .line 433
    .local v0, "alternative":Lcom/fsck/k9/mail/internet/Viewable$Alternative;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getText()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getParts(Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 434
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/Viewable$Alternative;->getHtml()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getParts(Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 438
    .end local v0    # "alternative":Lcom/fsck/k9/mail/internet/Viewable$Alternative;
    .end local v2    # "viewable":Lcom/fsck/k9/mail/internet/Viewable;
    :cond_2
    return-object v1
.end method

.method public static getTextFromPart(Lcom/fsck/k9/mail/Part;)Ljava/lang/String;
    .locals 2
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    .line 43
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTextFromPart(Lcom/fsck/k9/mail/Part;J)Ljava/lang/String;
    .locals 7
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .param p1, "textSizeLimit"    # J

    .prologue
    const/4 v6, 0x0

    .line 48
    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 49
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 50
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    instance-of v3, v0, Lcom/fsck/k9/mail/internet/TextBody;

    if-eqz v3, :cond_0

    .line 51
    check-cast v0, Lcom/fsck/k9/mail/internet/TextBody;

    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    invoke-virtual {v0}, Lcom/fsck/k9/mail/internet/TextBody;->getRawText()Ljava/lang/String;

    move-result-object v3

    .line 68
    :goto_0
    return-object v3

    .line 53
    .restart local v0    # "body":Lcom/fsck/k9/mail/Body;
    :cond_0
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "text/*"

    invoke-static {v2, v3}, Lcom/fsck/k9/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "application/pgp"

    .line 55
    invoke-interface {p0, v3}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    :cond_2
    invoke-static {p0, v0, v2, p1, p2}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getTextFromTextPart(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 58
    :cond_3
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provided non-text part: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .end local v0    # "body":Lcom/fsck/k9/mail/Body;
    .end local v2    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Unable to getTextFromPart"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 61
    :cond_4
    :try_start_1
    new-instance v3, Lcom/fsck/k9/mail/MessagingException;

    const-string v4, "Provided invalid part"

    invoke-direct {v3, v4}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Lcom/fsck/k9/mail/MessagingException;
    const-string v3, "Unable to getTextFromPart"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static getTextFromTextPart(Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/mail/Body;Ljava/lang/String;J)Ljava/lang/String;
    .locals 11
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .param p1, "body"    # Lcom/fsck/k9/mail/Body;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "textSizeLimit"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-static {v7, v8}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "charset":Ljava/lang/String;
    const-string v7, "text/html"

    invoke-static {p2, v7}, Lcom/fsck/k9/mail/internet/MimeUtility;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v1, :cond_2

    .line 81
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/MimeUtility;->decodeBody(Lcom/fsck/k9/mail/Body;)Ljava/io/InputStream;

    move-result-object v2

    .line 83
    .local v2, "in":Ljava/io/InputStream;
    const/16 v7, 0x100

    :try_start_0
    new-array v0, v7, [B

    .line 84
    .local v0, "buf":[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v2, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    .line 85
    new-instance v6, Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 87
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    const-string v7, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :try_start_1
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .end local v0    # "buf":[B
    .end local v6    # "str":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 90
    .restart local v0    # "buf":[B
    .restart local v6    # "str":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v7, "<meta http-equiv=\"?Content-Type\"? content=\"text/html; charset=(.+?)\">"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 91
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 92
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 93
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 97
    :cond_1
    :try_start_3
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 101
    .end local v0    # "buf":[B
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getMessageFromPart(Lcom/fsck/k9/mail/Part;)Lcom/fsck/k9/mail/Message;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/fsck/k9/mail/internet/CharsetSupport;->fixupCharset(Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {p1}, Lcom/fsck/k9/mail/internet/MimeUtility;->decodeBody(Lcom/fsck/k9/mail/Body;)Ljava/io/InputStream;

    move-result-object v2

    .line 107
    .restart local v2    # "in":Ljava/io/InputStream;
    const-wide/16 v8, -0x1

    cmp-long v7, p3, v8

    if-eqz v7, :cond_3

    new-instance v5, Lorg/apache/commons/io/input/BoundedInputStream;

    invoke-direct {v5, v2, p3, p4}, Lorg/apache/commons/io/input/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 110
    .local v5, "possiblyLimitedIn":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    invoke-static {v5, v1}, Lcom/fsck/k9/mail/internet/CharsetSupport;->readToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 113
    :try_start_5
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v8

    goto :goto_0

    .line 96
    .end local v5    # "possiblyLimitedIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    .line 97
    :try_start_6
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 98
    :goto_3
    throw v7

    :cond_3
    move-object v5, v2

    .line 107
    goto :goto_2

    .line 112
    .restart local v5    # "possiblyLimitedIn":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    .line 113
    :try_start_7
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->closeInputStreamWithoutDeletingTemporaryFiles(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 114
    :goto_4
    throw v7

    .line 98
    .end local v5    # "possiblyLimitedIn":Ljava/io/InputStream;
    .restart local v0    # "buf":[B
    .restart local v6    # "str":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_0

    .restart local v3    # "m":Ljava/util/regex/Matcher;
    .restart local v4    # "p":Ljava/util/regex/Pattern;
    :catch_2
    move-exception v7

    goto :goto_1

    .end local v0    # "buf":[B
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "str":Ljava/lang/String;
    :catch_3
    move-exception v8

    goto :goto_3

    .line 114
    .restart local v5    # "possiblyLimitedIn":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    goto :goto_4
.end method

.method public static getTextParts(Lcom/fsck/k9/mail/Part;)Ljava/util/Set;
    .locals 3
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/mail/Part;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/fsck/k9/mail/Part;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v1, "viewableParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/internet/Viewable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v0, "nonViewableParts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/mail/Part;>;"
    invoke-static {p0, v1, v0}, Lcom/fsck/k9/mail/internet/MessageExtractor;->findViewablesAndAttachments(Lcom/fsck/k9/mail/Part;Ljava/util/List;Ljava/util/List;)V

    .line 224
    invoke-static {v1}, Lcom/fsck/k9/mail/internet/MessageExtractor;->getParts(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public static hasMissingParts(Lcom/fsck/k9/mail/Part;)Z
    .locals 6
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;

    .prologue
    const/4 v3, 0x1

    .line 119
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getBody()Lcom/fsck/k9/mail/Body;

    move-result-object v0

    .line 120
    .local v0, "body":Lcom/fsck/k9/mail/Body;
    if-nez v0, :cond_0

    .line 131
    :goto_0
    return v3

    .line 123
    :cond_0
    instance-of v4, v0, Lcom/fsck/k9/mail/Multipart;

    if-eqz v4, :cond_2

    move-object v1, v0

    .line 124
    check-cast v1, Lcom/fsck/k9/mail/Multipart;

    .line 125
    .local v1, "multipart":Lcom/fsck/k9/mail/Multipart;
    invoke-virtual {v1}, Lcom/fsck/k9/mail/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    .line 126
    .local v2, "subPart":Lcom/fsck/k9/mail/Part;
    invoke-static {v2}, Lcom/fsck/k9/mail/internet/MessageExtractor;->hasMissingParts(Lcom/fsck/k9/mail/Part;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 131
    .end local v1    # "multipart":Lcom/fsck/k9/mail/Multipart;
    .end local v2    # "subPart":Lcom/fsck/k9/mail/Part;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static isPartTextualBody(Lcom/fsck/k9/mail/Part;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "part"    # Lcom/fsck/k9/mail/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 442
    invoke-interface {p0}, Lcom/fsck/k9/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "disposition":Ljava/lang/String;
    const/4 v2, 0x0

    .line 444
    .local v2, "dispositionType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 445
    .local v1, "dispositionFilename":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 446
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    const-string v6, "filename"

    invoke-static {v0, v6}, Lcom/fsck/k9/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    :cond_0
    const-string v6, "attachment"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v3, v5

    .line 451
    .local v3, "isAttachmentDisposition":Z
    :goto_0
    if-eqz v3, :cond_3

    .line 452
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 467
    :goto_1
    return-object v4

    .end local v3    # "isAttachmentDisposition":Z
    :cond_2
    move v3, v4

    .line 450
    goto :goto_0

    .line 455
    .restart local v3    # "isAttachmentDisposition":Z
    :cond_3
    const-string v6, "text/html"

    invoke-interface {p0, v6}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 456
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 459
    :cond_4
    const-string v6, "text/plain"

    invoke-interface {p0, v6}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 460
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 463
    :cond_5
    const-string v6, "application/pgp"

    invoke-interface {p0, v6}, Lcom/fsck/k9/mail/Part;->isMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 464
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    .line 467
    :cond_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1
.end method
