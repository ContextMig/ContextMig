.class public final Ldouzifly/list/b/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldouzifly/list/b/e; = null

.field private static final b:Ljava/lang/String; = "ThingsManager"

.field private static c:Ljava/util/List;

.field private static d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldouzifly/list/b/e;

    invoke-direct {v0}, Ldouzifly/list/b/e;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p0, Ldouzifly/list/b/e;

    sput-object p0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    const-string v0, "ThingsManager"

    sput-object v0, Ldouzifly/list/b/e;->b:Ljava/lang/String;

    new-array v0, v1, [Ldouzifly/list/b/c;

    invoke-static {v0}, Lb/a/d;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Ldouzifly/list/b/e;->c:Ljava/util/List;

    new-array v0, v1, [Ldouzifly/list/b/b;

    invoke-static {v0}, Lb/a/d;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Ldouzifly/list/b/e;->d:Ljava/util/List;

    return-void
.end method

.method private final a(Ldouzifly/list/b/c;)V
    .locals 4

    invoke-virtual {p1}, Ldouzifly/list/b/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Ldouzifly/list/b/b;

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/b;

    invoke-virtual {v0, p1}, Ldouzifly/list/b/b;->a(Ldouzifly/list/b/c;)V

    sget-object v0, Lb/g;->a:Lb/g;

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ldouzifly/list/b/c;->b(Z)V

    invoke-virtual {p1}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Ldouzifly/list/b/e;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static synthetic a(Ldouzifly/list/b/e;Ldouzifly/list/b/c;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/Long;ILjava/lang/Object;)V
    .locals 10

    if-eqz p10, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: addThing"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    :goto_0
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    move-object v8, v0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Ldouzifly/list/b/e;->a(Ldouzifly/list/b/c;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/Long;)V

    return-void

    :cond_1
    move-object/from16 v8, p8

    goto :goto_1

    :cond_2
    move/from16 v7, p7

    goto :goto_0
.end method

.method private final a(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "beforeSort:"

    const-string v1, "MainActivity"

    invoke-static {v0, v1}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldouzifly/list/b/b;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "douzifly.list.ui.home.MainActivity"

    invoke-static {v0, v2}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lb/g;->a:Lb/g;

    goto :goto_0

    :cond_2
    sget-object v0, Ldouzifly/list/b/e$a;->a:Ldouzifly/list/b/e$a;

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v0, "afterSort:"

    const-string v1, "MainActivity"

    invoke-static {v0, v1}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    nop

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " iscompelte: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldouzifly/list/b/b;->c()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldouzifly/list/b/b;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MainActivity"

    invoke-static {v0, v2}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lb/g;->a:Lb/g;

    goto :goto_1
.end method

.method private final b(Ldouzifly/list/b/c;)V
    .locals 3

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Ldouzifly/list/b/b;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and isComplete=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->count()I

    move-result v0

    invoke-virtual {p1, v0}, Ldouzifly/list/b/c;->a(I)V

    return-void
.end method

.method private final e()Ljava/util/List;
    .locals 4

    sget-object v0, Ldouzifly/list/b/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Ldouzifly/list/b/e;->d:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ldouzifly/list/b/e;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/c;

    invoke-virtual {v0}, Ldouzifly/list/b/c;->d()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-direct {v2, v0}, Ldouzifly/list/b/e;->a(Ldouzifly/list/b/c;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add things to all things, count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldouzifly/list/b/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xxxx"

    invoke-static {v2, v3}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Ldouzifly/list/b/e;->d:Ljava/util/List;

    invoke-virtual {v0}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lb/g;->a:Lb/g;

    goto :goto_1

    :cond_2
    sget-object v0, Ldouzifly/list/b/e;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Ldouzifly/list/b/e;->a(Ljava/util/List;)V

    sget-object v0, Ldouzifly/list/b/e;->d:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    sget-object v0, Ldouzifly/list/b/e;->c:Ljava/util/List;

    return-object v0
.end method

.method public final a(J)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getThingsByGroupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xxxx"

    invoke-static {v0, v1}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v0}, Ldouzifly/list/b/d;->a()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Ldouzifly/list/b/e;->e()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ldouzifly/list/b/e;->b(J)Ldouzifly/list/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ldouzifly/list/b/b;

    invoke-static {v0}, Lb/a/d;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public final a(Ldouzifly/list/b/b;)V
    .locals 2

    const-string v0, "thing"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ldouzifly/list/b/b;->h()Ldouzifly/list/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ldouzifly/list/b/c;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ldouzifly/list/b/c;->a(I)V

    :cond_2
    invoke-virtual {p1}, Ldouzifly/list/b/b;->delete()V

    invoke-direct {p0}, Ldouzifly/list/b/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldouzifly/list/b/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ldouzifly/list/b/e;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final a(Ldouzifly/list/b/b;Ldouzifly/list/b/c;)V
    .locals 11

    const/16 v9, 0xa

    const/4 v10, 0x0

    const-string v0, "thing"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Ldouzifly/list/b/b;->h()Ldouzifly/list/b/c;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-virtual {v1}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ldouzifly/list/b/e;->a(Ldouzifly/list/b/b;)V

    invoke-virtual {p1}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ldouzifly/list/b/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ldouzifly/list/b/b;->b()J

    move-result-wide v4

    invoke-virtual {p1}, Ldouzifly/list/b/b;->d()I

    move-result v6

    invoke-virtual {p1}, Ldouzifly/list/b/b;->c()Z

    move-result v7

    invoke-virtual {p1}, Ldouzifly/list/b/b;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v8}, Ldouzifly/list/b/e;->a(Ldouzifly/list/b/c;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/Long;)V

    :goto_0
    invoke-virtual {p1}, Ldouzifly/list/b/b;->b()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ldouzifly/list/b/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v9, :cond_3

    move v1, v9

    :goto_1
    invoke-virtual {p1}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    nop

    invoke-static {v0}, Lb/g/c;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v6

    :goto_3
    sget-object v1, Ldouzifly/list/alarm/a;->a:Ldouzifly/list/alarm/a;

    invoke-virtual {p1}, Ldouzifly/list/b/b;->getId()Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ldouzifly/list/b/b;->b()J

    move-result-wide v4

    invoke-virtual {p1}, Ldouzifly/list/b/b;->d()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Ldouzifly/list/alarm/a;->a(JJLjava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Ldouzifly/list/b/b;->save()Ljava/lang/Long;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ldouzifly/list/b/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v10

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ldouzifly/list/b/b;->f()Ljava/lang/String;

    move-result-object v0

    nop

    if-nez v0, :cond_6

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v0}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final a(Ldouzifly/list/b/b;Z)V
    .locals 2

    const-string v0, "thing"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ldouzifly/list/b/b;->h()Ldouzifly/list/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ldouzifly/list/b/b;->a(Z)V

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ldouzifly/list/b/c;->e()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ldouzifly/list/b/c;->a(I)V

    :goto_0
    invoke-virtual {p1}, Ldouzifly/list/b/b;->save()Ljava/lang/Long;

    invoke-virtual {v0}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Ldouzifly/list/b/e;->a(Ljava/util/List;)V

    invoke-direct {p0}, Ldouzifly/list/b/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ldouzifly/list/b/e;->a(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ldouzifly/list/b/c;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ldouzifly/list/b/c;->a(I)V

    goto :goto_0
.end method

.method public final a(Ldouzifly/list/b/c;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/Long;)V
    .locals 8

    const-string v0, "group"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p3, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ldouzifly/list/b/b;

    invoke-virtual {p1}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {v2, p2, v0, v1, p6}, Ldouzifly/list/b/b;-><init>(Ljava/lang/String;JI)V

    if-eqz p8, :cond_2

    check-cast p8, Ljava/lang/Number;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Ldouzifly/list/b/b;->b(J)V

    invoke-virtual {v2, p4, p5}, Ldouzifly/list/b/b;->a(J)V

    invoke-virtual {v2, p3}, Ldouzifly/list/b/b;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ldouzifly/list/b/b;->a(I)V

    invoke-virtual {v2, p1}, Ldouzifly/list/b/b;->a(Ldouzifly/list/b/c;)V

    invoke-virtual {v2, p7}, Ldouzifly/list/b/b;->a(Z)V

    invoke-virtual {v2}, Ldouzifly/list/b/b;->save()Ljava/lang/Long;

    invoke-direct {p0}, Ldouzifly/list/b/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldouzifly/list/b/e;->e()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ldouzifly/list/b/e;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ldouzifly/list/b/c;->save()Ljava/lang/Long;

    if-nez p7, :cond_0

    invoke-virtual {p1}, Ldouzifly/list/b/c;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ldouzifly/list/b/c;->a(I)V

    :cond_0
    invoke-virtual {p1}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Ldouzifly/list/b/e;->a(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    invoke-virtual {v2}, Ldouzifly/list/b/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    const/16 v0, 0xa

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    nop

    invoke-static {v0}, Lb/g/c;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v6

    :goto_3
    sget-object v1, Ldouzifly/list/alarm/a;->a:Ldouzifly/list/alarm/a;

    invoke-virtual {v2}, Ldouzifly/list/b/b;->getId()Ljava/lang/Long;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    move-wide v4, p4

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Ldouzifly/list/alarm/a;->a(JJLjava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Ldouzifly/list/b/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ldouzifly/list/b/b;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    nop

    if-nez v0, :cond_6

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v0}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "title"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ldouzifly/list/b/c;

    invoke-direct {v0, p1}, Ldouzifly/list/b/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldouzifly/list/b/c;->a(J)V

    invoke-virtual {v0}, Ldouzifly/list/b/c;->save()Ljava/lang/Long;

    sget-object v1, Ldouzifly/list/b/e;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ldouzifly/list/b/c;II)Z
    .locals 3

    const-string v0, "group"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/b;

    invoke-virtual {p1}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldouzifly/list/b/b;

    invoke-virtual {v0}, Ldouzifly/list/b/b;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ldouzifly/list/b/b;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, p3}, Ldouzifly/list/b/b;->a(I)V

    invoke-virtual {v1, p2}, Ldouzifly/list/b/b;->a(I)V

    invoke-virtual {p1}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ldouzifly/list/b/e$b;

    invoke-direct {v2, v0, v1}, Ldouzifly/list/b/e$b;-><init>(Ldouzifly/list/b/b;Ldouzifly/list/b/b;)V

    move-object v0, v2

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(J)Ldouzifly/list/b/c;
    .locals 5

    sget-object v0, Ldouzifly/list/b/e;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/c;

    invoke-virtual {v0}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ldouzifly/list/b/c;->d()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-direct {v1, v0}, Ldouzifly/list/b/e;->a(Ldouzifly/list/b/c;)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lb/g;->a:Lb/g;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    check-cast v0, Ldouzifly/list/b/c;

    goto :goto_1
.end method

.method public final b()V
    .locals 6

    const-string v0, "load from db"

    sget-object v1, Ldouzifly/list/b/e;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Ldouzifly/list/b/c;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    const-string v1, "Select().from(ThingGroup::class.java).execute()"

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ldouzifly/list/b/e;->c:Ljava/util/List;

    sget-object v0, Ldouzifly/list/b/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Ldouzifly/list/b/c;

    sget-object v0, Ldouzifly/list/ListApplication;->a:Ldouzifly/list/a;

    invoke-virtual {v0}, Ldouzifly/list/a;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ListApplication.appConte\u2026ng(R.string.default_list)"

    invoke-static {v0, v2}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ldouzifly/list/b/c;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ldouzifly/list/b/c;->a(Z)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldouzifly/list/b/c;->a(J)V

    invoke-virtual {v1}, Ldouzifly/list/b/c;->save()Ljava/lang/Long;

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v1}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v0

    const-string v3, "homeGroup.id"

    invoke-static {v0, v3}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ldouzifly/list/d/a;->a(J)V

    sget-object v0, Ldouzifly/list/b/e;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, Ldouzifly/list/b/e;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/c;

    sget-object v2, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-direct {v2, v0}, Ldouzifly/list/b/e;->b(Ldouzifly/list/b/c;)V

    sget-object v0, Lb/g;->a:Lb/g;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c()I
    .locals 4

    sget-object v0, Ldouzifly/list/b/e;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    nop

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lb/a/d;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/c;

    invoke-virtual {v0}, Ldouzifly/list/b/c;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    nop

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Empty iterable can\'t be reduced."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final c(J)Ldouzifly/list/b/b;
    .locals 7

    const/4 v1, 0x0

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    sget-object v0, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v0}, Ldouzifly/list/b/d;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    invoke-direct {p0}, Ldouzifly/list/b/e;->e()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/b;

    invoke-virtual {v0}, Ldouzifly/list/b/b;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lb/g;->a:Lb/g;

    goto :goto_0

    :cond_1
    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ldouzifly/list/b/e;->b(J)Ldouzifly/list/b/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Ldouzifly/list/b/c;->b(J)Ldouzifly/list/b/b;

    move-result-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    check-cast v0, Ldouzifly/list/b/b;

    goto :goto_1
.end method

.method public final d(J)Ldouzifly/list/b/b;
    .locals 5

    invoke-direct {p0}, Ldouzifly/list/b/e;->e()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    nop

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ldouzifly/list/b/b;

    invoke-virtual {v0}, Ldouzifly/list/b/b;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    check-cast v0, Ldouzifly/list/b/b;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    sget-object v0, Ldouzifly/list/b/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final e(J)Z
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v0}, Ldouzifly/list/b/d;->a()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ldouzifly/list/b/e;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/c;

    invoke-virtual {v0}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ldouzifly/list/b/c;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ldouzifly/list/b/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    nop

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldouzifly/list/b/b;

    sget-object v3, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-direct {v3}, Ldouzifly/list/b/e;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lb/g;->a:Lb/g;

    goto :goto_2

    :cond_2
    sget-object v1, Ldouzifly/list/b/e;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ldouzifly/list/b/c;->delete()V

    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v2, Ldouzifly/list/b/b;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lb/g;->a:Lb/g;

    goto :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method
