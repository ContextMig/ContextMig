.class public Lcom/batch/android/BatchUserDataEditor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/batch/android/a/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchUserDataEditor$b;,
        Lcom/batch/android/BatchUserDataEditor$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:I = 0x40


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/batch/android/BatchUserDataEditor$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "^[a-zA-Z0-9_]{1,30}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/batch/android/BatchUserDataEditor;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchUserDataEditor$a;
        }
    .end annotation

    .prologue
    .line 636
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/batch/android/BatchUserDataEditor;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key. Please make sure that the key is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can\'t be longer than 30 characters. Ignoring attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 639
    new-instance v0, Lcom/batch/android/BatchUserDataEditor$a;

    invoke-direct {v0}, Lcom/batch/android/BatchUserDataEditor$a;-><init>()V

    throw v0

    .line 642
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addTag(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchUserDataEditor;
    .locals 5
    .param p1, "collection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 400
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchUserDataEditor;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/BatchUserDataEditor$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 409
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/batch/android/BatchUserDataEditor;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/batch/android/BatchUserDataEditor$a; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 417
    iget-object v2, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v2

    .line 419
    :try_start_2
    iget-object v3, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v4, Lcom/batch/android/BatchUserDataEditor$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/batch/android/BatchUserDataEditor$3;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    :goto_0
    return-object p0

    .line 402
    :catch_0
    move-exception v0

    .line 404
    const-string v0, "Invalid collection. Please make sure that the collection is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can\'t be longer than 30 characters. Ignoring tag \'%s\' for collection \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 411
    :catch_1
    move-exception v0

    .line 413
    const-string v0, "Invalid tag. Please make sure that the tag is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can\'t be longer than 255 characters. Ignoring tag \'%s\' for collection \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchUserDataEditor$a;
        }
    .end annotation

    .prologue
    .line 647
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/batch/android/BatchUserDataEditor;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    :cond_0
    new-instance v0, Lcom/batch/android/BatchUserDataEditor$a;

    invoke-direct {v0}, Lcom/batch/android/BatchUserDataEditor$a;-><init>()V

    throw v0

    .line 652
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/BatchUserDataEditor$a;
        }
    .end annotation

    .prologue
    .line 657
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 659
    :cond_0
    new-instance v0, Lcom/batch/android/BatchUserDataEditor$a;

    invoke-direct {v0}, Lcom/batch/android/BatchUserDataEditor$a;-><init>()V

    throw v0

    .line 662
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clearAttributes()Lcom/batch/android/BatchUserDataEditor;
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v2, Lcom/batch/android/BatchUserDataEditor$2;

    invoke-direct {v2, p0}, Lcom/batch/android/BatchUserDataEditor$2;-><init>(Lcom/batch/android/BatchUserDataEditor;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    monitor-exit v1

    .line 384
    return-object p0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearTagCollection(Ljava/lang/String;)Lcom/batch/android/BatchUserDataEditor;
    .locals 3
    .param p1, "collection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 509
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v2, Lcom/batch/android/BatchUserDataEditor$6;

    invoke-direct {v2, p0, p1}, Lcom/batch/android/BatchUserDataEditor$6;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    monitor-exit v1

    .line 521
    return-object p0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearTags()Lcom/batch/android/BatchUserDataEditor;
    .locals 3

    .prologue
    .line 485
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v2, Lcom/batch/android/BatchUserDataEditor$5;

    invoke-direct {v2, p0}, Lcom/batch/android/BatchUserDataEditor$5;-><init>(Lcom/batch/android/BatchUserDataEditor;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    monitor-exit v1

    .line 497
    return-object p0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)Lcom/batch/android/BatchUserDataEditor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 343
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchUserDataEditor;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/BatchUserDataEditor$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 352
    :try_start_1
    iget-object v2, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v3, Lcom/batch/android/BatchUserDataEditor$15;

    invoke-direct {v3, p0, v0}, Lcom/batch/android/BatchUserDataEditor$15;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    monitor-exit v1

    .line 362
    :goto_0
    return-object p0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 345
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeTag(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchUserDataEditor;
    .locals 5
    .param p1, "collection"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 446
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchUserDataEditor;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/BatchUserDataEditor$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 455
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/batch/android/BatchUserDataEditor;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/batch/android/BatchUserDataEditor$a; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 463
    iget-object v2, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v2

    .line 465
    :try_start_2
    iget-object v3, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v4, Lcom/batch/android/BatchUserDataEditor$4;

    invoke-direct {v4, p0, v0, v1}, Lcom/batch/android/BatchUserDataEditor$4;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    :goto_0
    return-object p0

    .line 448
    :catch_0
    move-exception v0

    .line 450
    const-string v0, "Invalid collection. Please make sure that the collection is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can\'t be longer than 30 characters. Ignoring tag \'%s\' for collection \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 457
    :catch_1
    move-exception v0

    .line 459
    const-string v0, "Invalid tag. Please make sure that the tag is made of letters, underscores and numbers only (a-zA-Z0-9_). It also can\'t be longer than 255 characters. Ignoring tag \'%s\' for collection \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public save()V
    .locals 5

    .prologue
    .line 533
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 535
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 536
    iget-object v2, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 538
    const-wide/16 v2, 0x0

    new-instance v4, Lcom/batch/android/BatchUserDataEditor$7;

    invoke-direct {v4, p0, v0}, Lcom/batch/android/BatchUserDataEditor$7;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/util/List;)V

    invoke-static {v2, v3, v4}, Lcom/batch/android/f/g;->a(JLjava/lang/Runnable;)V

    .line 627
    monitor-exit v1

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAttribute(Ljava/lang/String;D)Lcom/batch/android/BatchUserDataEditor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # D

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchUserDataEditor;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/BatchUserDataEditor$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 199
    :try_start_1
    iget-object v2, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v3, Lcom/batch/android/BatchUserDataEditor$11;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/batch/android/BatchUserDataEditor$11;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;D)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    monitor-exit v1

    .line 209
    :goto_0
    return-object p0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;J)Lcom/batch/android/BatchUserDataEditor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # J

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchUserDataEditor;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/BatchUserDataEditor$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 165
    :try_start_1
    iget-object v2, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v3, Lcom/batch/android/BatchUserDataEditor$10;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/batch/android/BatchUserDataEditor$10;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;J)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    monitor-exit v1

    .line 175
    :goto_0
    return-object p0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchUserDataEditor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 302
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchUserDataEditor;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/BatchUserDataEditor$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 310
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_1

    .line 312
    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String attributes can\'t be null or longer than 64 characters. Ignoring attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 328
    :goto_0
    return-object p0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 318
    :try_start_1
    iget-object v2, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v3, Lcom/batch/android/BatchUserDataEditor$14;

    invoke-direct {v3, p0, v0, p2}, Lcom/batch/android/BatchUserDataEditor$14;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/util/Date;)Lcom/batch/android/BatchUserDataEditor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 258
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchUserDataEditor;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/BatchUserDataEditor$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 266
    if-nez p2, :cond_0

    .line 268
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAttribute cannot be used with a null value. Ignoring attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 287
    :goto_0
    return-object p0

    .line 273
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 275
    iget-object v2, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v2

    .line 277
    :try_start_1
    iget-object v3, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v4, Lcom/batch/android/BatchUserDataEditor$13;

    invoke-direct {v4, p0, v1, v0}, Lcom/batch/android/BatchUserDataEditor$13;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;Ljava/util/Date;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 260
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;Z)Lcom/batch/android/BatchUserDataEditor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Z

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/batch/android/BatchUserDataEditor;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/batch/android/BatchUserDataEditor$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 233
    :try_start_1
    iget-object v2, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v3, Lcom/batch/android/BatchUserDataEditor$12;

    invoke-direct {v3, p0, v0, p2}, Lcom/batch/android/BatchUserDataEditor$12;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v1

    .line 243
    :goto_0
    return-object p0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setIdentifier(Ljava/lang/String;)Lcom/batch/android/BatchUserDataEditor;
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v2, Lcom/batch/android/BatchUserDataEditor$9;

    invoke-direct {v2, p0, p1}, Lcom/batch/android/BatchUserDataEditor$9;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v1

    .line 141
    return-object p0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/batch/android/BatchUserDataEditor;
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v2, Lcom/batch/android/BatchUserDataEditor$1;

    invoke-direct {v2, p0, p1}, Lcom/batch/android/BatchUserDataEditor$1;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v1

    .line 75
    return-object p0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/batch/android/BatchUserDataEditor;
    .locals 3
    .param p1, "region"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    monitor-enter v1

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/BatchUserDataEditor;->c:Ljava/util/List;

    new-instance v2, Lcom/batch/android/BatchUserDataEditor$8;

    invoke-direct {v2, p0, p1}, Lcom/batch/android/BatchUserDataEditor$8;-><init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    monitor-exit v1

    .line 108
    return-object p0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
