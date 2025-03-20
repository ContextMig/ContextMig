.class public final Ldouzifly/list/d/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldouzifly/list/d/a; = null

.field private static final b:Lb/b; = null

.field private static final c:Ljava/lang/String; = "theme"

.field private static final d:Ljava/lang/String; = "sounds"

.field private static final e:Ljava/lang/String; = "random_color"

.field private static final f:Ljava/lang/String; = "font_size"

.field private static final g:Ljava/lang/String; = "selected_group_id"

.field private static final h:J = -0x1L

.field private static final i:Lb/b;

.field private static final j:Lb/b;

.field private static k:Ldouzifly/list/d/b;

.field private static l:Z

.field private static m:Z

.field private static n:I

.field private static o:J

.field private static final synthetic p:[Lb/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/d/a;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "sp"

    const-string v5, "getSp()Landroid/content/SharedPreferences;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/d/a;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "APP_DIR"

    const-string v5, "getAPP_DIR()Ljava/lang/String;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/d/a;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "BACKUP_DIR"

    const-string v5, "getBACKUP_DIR()Ljava/lang/String;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/d/a;->p:[Lb/f/e;

    new-instance v0, Ldouzifly/list/d/a;

    invoke-direct {v0}, Ldouzifly/list/d/a;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    check-cast v0, Ldouzifly/list/d/a;

    sput-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    sget-object v0, Ldouzifly/list/d/a$g;->a:Ldouzifly/list/d/a$g;

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    sput-object v0, Ldouzifly/list/d/a;->b:Lb/b;

    const-string v0, "theme"

    sput-object v0, Ldouzifly/list/d/a;->c:Ljava/lang/String;

    const-string v0, "sounds"

    sput-object v0, Ldouzifly/list/d/a;->d:Ljava/lang/String;

    const-string v0, "random_color"

    sput-object v0, Ldouzifly/list/d/a;->e:Ljava/lang/String;

    const-string v0, "font_size"

    sput-object v0, Ldouzifly/list/d/a;->f:Ljava/lang/String;

    const-string v0, "selected_group_id"

    sput-object v0, Ldouzifly/list/d/a;->g:Ljava/lang/String;

    const-wide/16 v0, 0x1

    neg-long v0, v0

    sput-wide v0, Ldouzifly/list/d/a;->h:J

    sget-object v0, Ldouzifly/list/d/a$a;->a:Ldouzifly/list/d/a$a;

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    sput-object v0, Ldouzifly/list/d/a;->i:Lb/b;

    sget-object v0, Ldouzifly/list/d/a$b;->a:Ldouzifly/list/d/a$b;

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    sput-object v0, Ldouzifly/list/d/a;->j:Lb/b;

    sget-object v0, Ldouzifly/list/d/b;->a:Ldouzifly/list/d/b;

    sput-object v0, Ldouzifly/list/d/a;->k:Ldouzifly/list/d/b;

    sput-boolean v4, Ldouzifly/list/d/a;->l:Z

    sput-boolean v4, Ldouzifly/list/d/a;->m:Z

    sget-object v0, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    invoke-virtual {v0}, Ldouzifly/list/widget/d;->b()I

    move-result v0

    sput v0, Ldouzifly/list/d/a;->n:I

    sget-wide v0, Ldouzifly/list/d/a;->h:J

    sput-wide v0, Ldouzifly/list/d/a;->o:J

    sget-object v0, Ldouzifly/list/d/b;->c:Ldouzifly/list/d/c;

    invoke-virtual {p0}, Ldouzifly/list/d/a;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Ldouzifly/list/d/a;->c:Ljava/lang/String;

    sget-object v3, Ldouzifly/list/d/b;->a:Ldouzifly/list/d/b;

    invoke-virtual {v3}, Ldouzifly/list/d/b;->a()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ldouzifly/list/d/c;->a(I)Ldouzifly/list/d/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldouzifly/list/d/a;->a(Ldouzifly/list/d/b;)V

    invoke-virtual {p0}, Ldouzifly/list/d/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Ldouzifly/list/d/a;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Ldouzifly/list/d/a;->a(Z)V

    invoke-virtual {p0}, Ldouzifly/list/d/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Ldouzifly/list/d/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Ldouzifly/list/d/a;->b(Z)V

    invoke-virtual {p0}, Ldouzifly/list/d/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Ldouzifly/list/d/a;->f:Ljava/lang/String;

    sget-object v2, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    invoke-virtual {v2}, Ldouzifly/list/widget/d;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ldouzifly/list/d/a;->a(I)V

    invoke-virtual {p0}, Ldouzifly/list/d/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Ldouzifly/list/d/a;->g:Ljava/lang/String;

    sget-wide v2, Ldouzifly/list/d/a;->h:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ldouzifly/list/d/a;->a(J)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Ldouzifly/list/d/a;->b:Lb/b;

    sget-object v1, Ldouzifly/list/d/a;->p:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    sget v0, Ldouzifly/list/d/a;->n:I

    if-eq v0, p1, :cond_0

    sput p1, Ldouzifly/list/d/a;->n:I

    new-instance v0, Ldouzifly/list/d/a$c;

    invoke-direct {v0, p1}, Ldouzifly/list/d/a$c;-><init>(I)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    :cond_0
    return-void
.end method

.method public final a(J)V
    .locals 3

    sget-wide v0, Ldouzifly/list/d/a;->o:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    sput-wide p1, Ldouzifly/list/d/a;->o:J

    new-instance v0, Ldouzifly/list/d/a$e;

    invoke-direct {v0, p1, p2}, Ldouzifly/list/d/a$e;-><init>(J)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    :cond_0
    return-void
.end method

.method public final a(Ldouzifly/list/d/b;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ldouzifly/list/d/a;->k:Ldouzifly/list/d/b;

    invoke-static {v0, p1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sput-object p1, Ldouzifly/list/d/a;->k:Ldouzifly/list/d/b;

    new-instance v0, Ldouzifly/list/d/a$h;

    invoke-direct {v0, p1}, Ldouzifly/list/d/a$h;-><init>(Ldouzifly/list/d/b;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    sget-boolean v0, Ldouzifly/list/d/a;->l:Z

    if-eq v0, p1, :cond_0

    sput-boolean p1, Ldouzifly/list/d/a;->l:Z

    new-instance v0, Ldouzifly/list/d/a$f;

    invoke-direct {v0, p1}, Ldouzifly/list/d/a$f;-><init>(Z)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldouzifly/list/d/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .locals 1

    sget-boolean v0, Ldouzifly/list/d/a;->m:Z

    if-eq v0, p1, :cond_0

    sput-boolean p1, Ldouzifly/list/d/a;->m:Z

    new-instance v0, Ldouzifly/list/d/a$d;

    invoke-direct {v0, p1}, Ldouzifly/list/d/a$d;-><init>(Z)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldouzifly/list/d/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldouzifly/list/d/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldouzifly/list/d/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldouzifly/list/d/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldouzifly/list/d/a;->i:Lb/b;

    sget-object v1, Ldouzifly/list/d/a;->p:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    sget-object v0, Ldouzifly/list/d/a;->j:Lb/b;

    sget-object v1, Ldouzifly/list/d/a;->p:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ldouzifly/list/d/b;
    .locals 1

    sget-object v0, Ldouzifly/list/d/a;->k:Ldouzifly/list/d/b;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    sget-boolean v0, Ldouzifly/list/d/a;->l:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    sget-boolean v0, Ldouzifly/list/d/a;->m:Z

    return v0
.end method

.method public final l()I
    .locals 1

    sget v0, Ldouzifly/list/d/a;->n:I

    return v0
.end method

.method public final m()J
    .locals 2

    sget-wide v0, Ldouzifly/list/d/a;->o:J

    return-wide v0
.end method
