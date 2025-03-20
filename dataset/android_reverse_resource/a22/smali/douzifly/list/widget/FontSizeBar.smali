.class public final Ldouzifly/list/widget/FontSizeBar;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final a:Ldouzifly/list/widget/d;

.field private static final h:I = 0x0

# The value of this static final field might be set in the static constructor
.field private static final i:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final j:I = 0x2

.field private static final k:Lb/b;

.field private static final l:Lb/b;

.field private static final m:Lb/b;

.field private static final synthetic n:[Lb/f/e;


# instance fields
.field private final b:Lb/b;

.field private final c:Lb/b;

.field private final d:Lb/b;

.field private final e:Lb/b;

.field private f:Lb/d/a/b;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v0, Ldouzifly/list/widget/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldouzifly/list/widget/d;-><init>(Lb/d/b/g;)V

    sput-object v0, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    sput v6, Ldouzifly/list/widget/FontSizeBar;->i:I

    sput v7, Ldouzifly/list/widget/FontSizeBar;->j:I

    sget-object v0, Ldouzifly/list/widget/FontSizeBar$c;->a:Ldouzifly/list/widget/FontSizeBar$c;

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    sput-object v0, Ldouzifly/list/widget/FontSizeBar;->k:Lb/b;

    sget-object v0, Ldouzifly/list/widget/FontSizeBar$b;->a:Ldouzifly/list/widget/FontSizeBar$b;

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    sput-object v0, Ldouzifly/list/widget/FontSizeBar;->l:Lb/b;

    sget-object v0, Ldouzifly/list/widget/FontSizeBar$a;->a:Ldouzifly/list/widget/FontSizeBar$a;

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    sput-object v0, Ldouzifly/list/widget/FontSizeBar;->m:Lb/b;

    const/4 v0, 0x4

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/FontSizeBar;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtSmall"

    const-string v5, "getTxtSmall()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    new-instance v0, Lb/d/b/o;

    const-class v2, Ldouzifly/list/widget/FontSizeBar;

    invoke-static {v2}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v2

    const-string v3, "txtNormal"

    const-string v4, "getTxtNormal()Landroid/widget/TextView;"

    invoke-direct {v0, v2, v3, v4}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v6

    new-instance v0, Lb/d/b/o;

    const-class v2, Ldouzifly/list/widget/FontSizeBar;

    invoke-static {v2}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v2

    const-string v3, "txtLarge"

    const-string v4, "getTxtLarge()Landroid/widget/TextView;"

    invoke-direct {v0, v2, v3, v4}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v7

    const/4 v2, 0x3

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/FontSizeBar;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "seekBar"

    const-string v5, "getSeekBar()Landroid/widget/SeekBar;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/widget/FontSizeBar;->n:[Lb/f/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ldouzifly/list/widget/FontSizeBar$g;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/FontSizeBar$g;-><init>(Ldouzifly/list/widget/FontSizeBar;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/FontSizeBar;->b:Lb/b;

    new-instance v0, Ldouzifly/list/widget/FontSizeBar$f;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/FontSizeBar$f;-><init>(Ldouzifly/list/widget/FontSizeBar;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/FontSizeBar;->c:Lb/b;

    new-instance v0, Ldouzifly/list/widget/FontSizeBar$e;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/FontSizeBar$e;-><init>(Ldouzifly/list/widget/FontSizeBar;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/FontSizeBar;->d:Lb/b;

    new-instance v0, Ldouzifly/list/widget/FontSizeBar$d;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/FontSizeBar$d;-><init>(Ldouzifly/list/widget/FontSizeBar;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/FontSizeBar;->e:Lb/b;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040029

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p0}, Ldouzifly/list/widget/FontSizeBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/FontSizeBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Ldouzifly/list/widget/FontSizeBar;->h:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Ldouzifly/list/widget/FontSizeBar;->i:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    sget v0, Ldouzifly/list/widget/FontSizeBar;->j:I

    return v0
.end method

.method public static final synthetic e()Lb/b;
    .locals 1

    sget-object v0, Ldouzifly/list/widget/FontSizeBar;->k:Lb/b;

    return-object v0
.end method

.method public static final synthetic f()Lb/b;
    .locals 1

    sget-object v0, Ldouzifly/list/widget/FontSizeBar;->l:Lb/b;

    return-object v0
.end method

.method public static final synthetic g()Lb/b;
    .locals 1

    sget-object v0, Ldouzifly/list/widget/FontSizeBar;->m:Lb/b;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/16 v1, 0x32

    invoke-virtual {p0}, Ldouzifly/list/widget/FontSizeBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ge v0, v1, :cond_0

    sget-object v0, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    invoke-virtual {v0}, Ldouzifly/list/widget/d;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Ldouzifly/list/widget/FontSizeBar;->setFontSize(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldouzifly/list/widget/FontSizeBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    invoke-virtual {v0}, Ldouzifly/list/widget/d;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ldouzifly/list/widget/FontSizeBar;->setFontSize(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    invoke-virtual {v0}, Ldouzifly/list/widget/d;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Ldouzifly/list/widget/FontSizeBar;->setFontSize(I)V

    goto :goto_0
.end method

.method public final getFontSize()I
    .locals 1

    iget v0, p0, Ldouzifly/list/widget/FontSizeBar;->g:I

    return v0
.end method

.method public final getFontSizeChangeListener()Lb/d/a/b;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/FontSizeBar;->f:Lb/d/a/b;

    return-object v0
.end method

.method public final getSeekBar()Landroid/widget/SeekBar;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/FontSizeBar;->e:Lb/b;

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->n:[Lb/f/e;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method

.method public final getTxtLarge()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/FontSizeBar;->d:Lb/b;

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->n:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTxtNormal()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/FontSizeBar;->c:Lb/b;

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->n:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTxtSmall()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/FontSizeBar;->b:Lb/b;

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->n:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/16 v2, 0x32

    if-nez p1, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    const/16 v1, 0x4b

    if-le v0, v1, :cond_2

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :goto_0
    invoke-virtual {p0}, Ldouzifly/list/widget/FontSizeBar;->a()V

    iget-object v0, p0, Ldouzifly/list/widget/FontSizeBar;->f:Lb/d/a/b;

    if-eqz v0, :cond_1

    iget v1, p0, Ldouzifly/list/widget/FontSizeBar;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/d/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g;

    :cond_1
    return-void

    :cond_2
    if-le v0, v2, :cond_3

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x19

    if-le v0, v1, :cond_4

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public final setFontSize(I)V
    .locals 2

    iget v0, p0, Ldouzifly/list/widget/FontSizeBar;->g:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Ldouzifly/list/widget/FontSizeBar;->g:I

    iget v0, p0, Ldouzifly/list/widget/FontSizeBar;->g:I

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    invoke-virtual {v1}, Ldouzifly/list/widget/d;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ldouzifly/list/widget/FontSizeBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Ldouzifly/list/widget/FontSizeBar;->g:I

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    invoke-virtual {v1}, Ldouzifly/list/widget/d;->b()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ldouzifly/list/widget/FontSizeBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Ldouzifly/list/widget/FontSizeBar;->g:I

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    invoke-virtual {v1}, Ldouzifly/list/widget/d;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/widget/FontSizeBar;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public final setFontSizeChangeListener(Lb/d/a/b;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/FontSizeBar;->f:Lb/d/a/b;

    return-void
.end method
