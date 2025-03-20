.class public final Ldouzifly/list/ui/home/SettingActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# static fields
.field public static final a:Ldouzifly/list/ui/home/k;

# The value of this static final field might be set in the static constructor
.field private static final l:I = 0x3ea

# The value of this static final field might be set in the static constructor
.field private static final m:I = 0x3eb

.field private static final synthetic n:[Lb/f/e;


# instance fields
.field private final b:Lb/b;

.field private final c:Lb/b;

.field private final d:Lb/b;

.field private final e:Lb/b;

.field private final f:Lb/b;

.field private final g:Lb/b;

.field private final h:Lb/b;

.field private final i:Lb/b;

.field private final j:Lb/b;

.field private final k:Ldouzifly/list/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ldouzifly/list/ui/home/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldouzifly/list/ui/home/k;-><init>(Lb/d/b/g;)V

    sput-object v0, Ldouzifly/list/ui/home/SettingActivity;->a:Ldouzifly/list/ui/home/k;

    const/16 v0, 0x3ea

    sput v0, Ldouzifly/list/ui/home/SettingActivity;->l:I

    const/16 v0, 0x3eb

    sput v0, Ldouzifly/list/ui/home/SettingActivity;->m:I

    const/16 v0, 0x9

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/SettingActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "inputPanel"

    const-string v5, "getInputPanel()Ldouzifly/list/widget/TitleLayout;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/SettingActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "imgThemeColorSelected"

    const-string v5, "getImgThemeColorSelected()Landroid/widget/ImageView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/SettingActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "imgThemeSimpleSelected"

    const-string v5, "getImgThemeSimpleSelected()Landroid/widget/ImageView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/SettingActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtSoundOnOff"

    const-string v5, "getTxtSoundOnOff()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x4

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/SettingActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtVersion"

    const-string v5, "getTxtVersion()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x5

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/SettingActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtEditGroup"

    const-string v5, "getTxtEditGroup()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x6

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/SettingActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtGroup"

    const-string v5, "getTxtGroup()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x7

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/SettingActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtBackup"

    const-string v5, "getTxtBackup()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/16 v2, 0x8

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/SettingActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "fontSizeBar"

    const-string v5, "getFontSizeBar()Ldouzifly/list/widget/FontSizeBar;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/ui/home/SettingActivity;->n:[Lb/f/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$f;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$f;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->b:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$d;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$d;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->c:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$e;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$e;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->d:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$x;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$x;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->e:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$y;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$y;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->f:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$v;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$v;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->g:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$w;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$w;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->h:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$u;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$u;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->i:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$c;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$c;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->j:Lb/b;

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->i()Ldouzifly/list/d/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->k:Ldouzifly/list/d/b;

    return-void
.end method

.method public static final synthetic r()I
    .locals 1

    sget v0, Ldouzifly/list/ui/home/SettingActivity;->l:I

    return v0
.end method

.method public static final synthetic s()I
    .locals 1

    sget v0, Ldouzifly/list/ui/home/SettingActivity;->m:I

    return v0
.end method


# virtual methods
.method public final a()Ldouzifly/list/widget/TitleLayout;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->b:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/SettingActivity;->n:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/widget/TitleLayout;

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    sget-object v0, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v0}, Ldouzifly/list/b/d;->a()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->g()Landroid/widget/TextView;

    move-result-object v1

    const v0, 0x7f070049

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->g()Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v0, p1, p2}, Ldouzifly/list/b/e;->b(J)Ldouzifly/list/b/c;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_1
    invoke-virtual {v0}, Ldouzifly/list/b/c;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ArrayAdapter;)V
    .locals 3

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070040

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Landroid/widget/ListAdapter;

    new-instance v1, Ldouzifly/list/ui/home/SettingActivity$r;

    invoke-direct {v1, p0, p1}, Ldouzifly/list/ui/home/SettingActivity$r;-><init>(Ldouzifly/list/ui/home/SettingActivity;Landroid/widget/ArrayAdapter;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public final a(Ldouzifly/list/d/b;)V
    .locals 1

    const-string v0, "theme"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->i()Ldouzifly/list/d/b;

    move-result-object v0

    invoke-static {p1, v0}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0, p1}, Ldouzifly/list/d/a;->a(Ldouzifly/list/d/b;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->p()V

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->k:Ldouzifly/list/d/b;

    invoke-static {v0, p1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Ldouzifly/list/ui/home/SettingActivity;->a:Ldouzifly/list/ui/home/k;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/k;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/SettingActivity;->setResult(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070044

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070031

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$s;

    invoke-direct {v0, p0, p1}, Ldouzifly/list/ui/home/SettingActivity$s;-><init>(Ldouzifly/list/ui/home/SettingActivity;Ljava/lang/String;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070035

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$t;

    invoke-direct {v0, p0, p1}, Ldouzifly/list/ui/home/SettingActivity$t;-><init>(Ldouzifly/list/ui/home/SettingActivity;Ljava/lang/String;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public final b()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->c:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/SettingActivity;->n:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final c()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->d:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/SettingActivity;->n:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->e:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/SettingActivity;->n:[Lb/f/e;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->f:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/SettingActivity;->n:[Lb/f/e;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final f()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->g:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/SettingActivity;->n:[Lb/f/e;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final g()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->h:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/SettingActivity;->n:[Lb/f/e;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final h()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->i:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/SettingActivity;->n:[Lb/f/e;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final i()Ldouzifly/list/widget/FontSizeBar;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/SettingActivity;->j:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/SettingActivity;->n:[Lb/f/e;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/widget/FontSizeBar;

    return-object v0
.end method

.method public final j()V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v2, Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Ldouzifly/list/ui/home/SettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final k()V
    .locals 2

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ldouzifly/list/d/a;->a(Z)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->q()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()V
    .locals 3

    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070045

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07002d

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$g;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$g;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070040

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$h;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$h;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public final m()V
    .locals 2

    const v1, 0x7f070030

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldouzifly/list/f/a;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$a;

    invoke-direct {v0, p0, v1}, Ldouzifly/list/ui/home/SettingActivity$a;-><init>(Ldouzifly/list/ui/home/SettingActivity;Landroid/app/ProgressDialog;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    return-void
.end method

.method public final n()V
    .locals 0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/jakewharton/processphoenix/ProcessPhoenix;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final o()V
    .locals 2

    const-string v0, ""

    invoke-static {p0, v0}, Ldouzifly/list/f/a;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$b;

    invoke-direct {v0, p0, v1}, Ldouzifly/list/ui/home/SettingActivity$b;-><init>(Ldouzifly/list/ui/home/SettingActivity;Landroid/app/ProgressDialog;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget v0, Landroid/support/v7/app/AppCompatActivity;->RESULT_OK:I

    if-ne p2, v0, :cond_1

    if-nez p3, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    const-string v0, "id"

    const/4 v1, 0x1

    neg-int v1, v1

    int-to-long v2, v1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-object v3, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v3, v0, v1}, Ldouzifly/list/d/a;->a(J)V

    const-string v3, "id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget-object v3, Ldouzifly/list/ui/home/SettingActivity;->a:Ldouzifly/list/ui/home/k;

    invoke-virtual {v3}, Ldouzifly/list/ui/home/k;->b()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Ldouzifly/list/ui/home/SettingActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0, v0, v1}, Ldouzifly/list/ui/home/SettingActivity;->a(J)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f0d009a

    const v3, 0x7f0c0084

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/SettingActivity;->setContentView(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->a()Ldouzifly/list/widget/TitleLayout;

    move-result-object v0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.string.setting)"

    invoke-static {v1, v2}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/TitleLayout;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->a()Ldouzifly/list/widget/TitleLayout;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/TitleLayout;->getTxtCount()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0, v4}, Ldouzifly/list/ui/home/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0d009f

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->i()Ldouzifly/list/widget/FontSizeBar;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/FontSizeBar;->getTxtSmall()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->i()Ldouzifly/list/widget/FontSizeBar;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/FontSizeBar;->getTxtNormal()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->i()Ldouzifly/list/widget/FontSizeBar;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/FontSizeBar;->getTxtLarge()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->h()Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$i;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$i;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->b()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v0, Lcom/mikepenz/google_material_typeface_library/b;->J:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v0, Lcom/mikepenz/iconics/typeface/a;

    invoke-static {v0, v3}, Ldouzifly/list/f/e;->b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->c()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v0, Lcom/mikepenz/google_material_typeface_library/b;->J:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v0, Lcom/mikepenz/iconics/typeface/a;

    invoke-static {v0, v3}, Ldouzifly/list/f/e;->b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->p()V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->q()V

    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$j;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$j;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$k;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$k;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->d()Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$l;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$l;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v4}, Ldouzifly/list/ui/home/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$m;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$m;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->e()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->m()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ldouzifly/list/ui/home/SettingActivity;->a(J)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->f()Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$n;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$n;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->g()Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$o;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$o;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->i()Ldouzifly/list/widget/FontSizeBar;

    move-result-object v1

    sget-object v0, Ldouzifly/list/ui/home/SettingActivity$p;->a:Ldouzifly/list/ui/home/SettingActivity$p;

    check-cast v0, Lb/d/a/b;

    invoke-virtual {v1, v0}, Ldouzifly/list/widget/FontSizeBar;->setFontSizeChangeListener(Lb/d/a/b;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->i()Ldouzifly/list/widget/FontSizeBar;

    move-result-object v0

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v1}, Ldouzifly/list/d/a;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/FontSizeBar;->setFontSize(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    invoke-virtual {v0}, Ldouzifly/list/a/c;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object v1, Ldouzifly/list/a/c;->a:Ldouzifly/list/a/c;

    new-instance v0, Ldouzifly/list/ui/home/SettingActivity$q;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/SettingActivity$q;-><init>(Ldouzifly/list/ui/home/SettingActivity;)V

    check-cast v0, Lb/d/a/b;

    invoke-virtual {v1, p2, p3, v0}, Ldouzifly/list/a/c;->a([Ljava/lang/String;[ILb/d/a/b;)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->i()Ldouzifly/list/d/b;

    move-result-object v0

    sget-object v1, Ldouzifly/list/d/b;->a:Ldouzifly/list/d/b;

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->c()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->b()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->c()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final q()V
    .locals 3

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->d()Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ldouzifly/list/ui/home/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070024

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0
.end method
