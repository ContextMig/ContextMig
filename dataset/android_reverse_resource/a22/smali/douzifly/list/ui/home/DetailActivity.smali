.class public final Ldouzifly/list/ui/home/DetailActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/date/d;
.implements Lcom/wdullaer/materialdatetimepicker/time/m;


# static fields
.field public static final a:Ldouzifly/list/ui/home/a;

# The value of this static final field might be set in the static constructor
.field private static final r:Ljava/lang/String; = "thing_id"

# The value of this static final field might be set in the static constructor
.field private static final s:Ljava/lang/String; = "DetailActivity"

# The value of this static final field might be set in the static constructor
.field private static final t:I = 0x2

# The value of this static final field might be set in the static constructor
.field private static final u:I = 0x3

# The value of this static final field might be set in the static constructor
.field private static final v:I = 0x64

.field private static final synthetic w:[Lb/f/e;


# instance fields
.field private b:Ljava/util/Date;

.field private c:Ldouzifly/list/b/b;

.field private d:Ljava/util/Date;

.field private final e:Lb/b;

.field private final f:Lb/b;

.field private final g:Lb/b;

.field private final h:Lb/b;

.field private final i:Lb/b;

.field private final j:Lb/b;

.field private final k:Lb/b;

.field private final l:Lb/b;

.field private final m:Lb/b;

.field private final n:Lb/b;

.field private final o:Landroid/view/View$OnFocusChangeListener;

.field private p:Ldouzifly/list/b/c;

.field private final q:Lb/d/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    new-instance v0, Ldouzifly/list/ui/home/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldouzifly/list/ui/home/a;-><init>(Lb/d/b/g;)V

    sput-object v0, Ldouzifly/list/ui/home/DetailActivity;->a:Ldouzifly/list/ui/home/a;

    const-string v0, "thing_id"

    sput-object v0, Ldouzifly/list/ui/home/DetailActivity;->r:Ljava/lang/String;

    const-string v0, "DetailActivity"

    sput-object v0, Ldouzifly/list/ui/home/DetailActivity;->s:Ljava/lang/String;

    sput v6, Ldouzifly/list/ui/home/DetailActivity;->t:I

    sput v7, Ldouzifly/list/ui/home/DetailActivity;->u:I

    const/16 v0, 0x64

    sput v0, Ldouzifly/list/ui/home/DetailActivity;->v:I

    const/16 v0, 0xa

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/DetailActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "actionDone"

    const-string v5, "getActionDone()Lcom/github/clans/fab/FloatingActionButton;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/DetailActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "actionDelete"

    const-string v5, "getActionDelete()Lcom/github/clans/fab/FloatingActionButton;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    new-instance v0, Lb/d/b/o;

    const-class v2, Ldouzifly/list/ui/home/DetailActivity;

    invoke-static {v2}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v2

    const-string v3, "txtTitle"

    const-string v4, "getTxtTitle()Landroid/widget/TextView;"

    invoke-direct {v0, v2, v3, v4}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v6

    new-instance v0, Lb/d/b/o;

    const-class v2, Ldouzifly/list/ui/home/DetailActivity;

    invoke-static {v2}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v2

    const-string v3, "editTitle"

    const-string v4, "getEditTitle()Landroid/widget/EditText;"

    invoke-direct {v0, v2, v3, v4}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v7

    const/4 v2, 0x4

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/DetailActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "editContent"

    const-string v5, "getEditContent()Landroid/widget/EditText;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x5

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/DetailActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "addReminder"

    const-string v5, "getAddReminder()Lcom/github/clans/fab/FloatingActionButton;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x6

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/DetailActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtReminder"

    const-string v5, "getTxtReminder()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x7

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/DetailActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "colorPicker"

    const-string v5, "getColorPicker()Ldouzifly/list/widget/ColorPicker;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/16 v2, 0x8

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/DetailActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtGroup"

    const-string v5, "getTxtGroup()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/16 v2, 0x9

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/ui/home/DetailActivity;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "delReminder"

    const-string v5, "getDelReminder()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/ui/home/DetailActivity;->w:[Lb/f/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$b;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$b;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->e:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$a;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$a;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->f:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$w;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$w;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->g:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$h;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$h;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->h:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$f;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$f;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->i:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$c;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$c;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->j:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$v;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$v;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->k:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$d;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$d;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->l:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$u;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$u;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->m:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$e;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$e;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->n:Lb/b;

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$i;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$i;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->o:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$p;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$p;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/b;

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->q:Lb/d/a/b;

    return-void
.end method

.method private final A()V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-wide/16 v2, 0x64

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$g;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$g;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v2, v3, v0}, Ldouzifly/list/f/h;->a(JLb/d/a/a;)V

    return-void
.end method

.method public static final synthetic a(Ldouzifly/list/ui/home/DetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ldouzifly/list/ui/home/DetailActivity;->A()V

    return-void
.end method

.method public static final synthetic v()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldouzifly/list/ui/home/DetailActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic w()Ljava/lang/String;
    .locals 1

    sget-object v0, Ldouzifly/list/ui/home/DetailActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic x()I
    .locals 1

    sget v0, Ldouzifly/list/ui/home/DetailActivity;->t:I

    return v0
.end method

.method public static final synthetic y()I
    .locals 1

    sget v0, Ldouzifly/list/ui/home/DetailActivity;->u:I

    return v0
.end method

.method public static final synthetic z()I
    .locals 1

    sget v0, Ldouzifly/list/ui/home/DetailActivity;->v:I

    return v0
.end method


# virtual methods
.method public final a()Ldouzifly/list/b/b;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    return-object v0
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/b;III)V
    .locals 2

    new-instance v0, Ljava/util/Date;

    add-int/lit16 v1, p2, -0x76c

    invoke-direct {v0, v1, p3, p4}, Ljava/util/Date;-><init>(III)V

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->b:Ljava/util/Date;

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->o()V

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;III)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oooo"

    invoke-static {v0, v1}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->b:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/Date;->setHours(I)V

    :cond_0
    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->b:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/Date;->setMinutes(I)V

    :cond_1
    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->b:Ljava/util/Date;

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->d:Ljava/util/Date;

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->b:Ljava/util/Date;

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/DetailActivity;->a(Ljava/util/Date;)V

    return-void
.end method

.method public final a(Ldouzifly/list/b/c;)V
    .locals 2

    const-string v0, "group"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldouzifly/list/ui/home/DetailActivity;->p:Ldouzifly/list/b/c;

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->j()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->p:Ldouzifly/list/b/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldouzifly/list/b/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "Unknown"

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public final a(Ljava/util/Date;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->h()Landroid/widget/TextView;

    move-result-object v1

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->k()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->k()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->h()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1}, Ldouzifly/list/f/b;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p1}, Ldouzifly/list/f/b;->a(Landroid/widget/TextView;Ljava/util/Date;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->d()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    nop

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->d()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final b()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->e:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->w:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method public final c()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->f:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->w:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method public final d()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->g:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->w:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final e()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->h:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->w:[Lb/f/e;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public final f()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->i:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->w:[Lb/f/e;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public final g()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->j:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->w:[Lb/f/e;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method public final h()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->k:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->w:[Lb/f/e;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final i()Ldouzifly/list/widget/ColorPicker;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->l:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->w:[Lb/f/e;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/widget/ColorPicker;

    return-object v0
.end method

.method public final j()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->m:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->w:[Lb/f/e;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final k()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->n:Lb/b;

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->w:[Lb/f/e;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final l()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->finishAfterTransition()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->finish()V

    goto :goto_0
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->b:Ljava/util/Date;

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->b:Ljava/util/Date;

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/DetailActivity;->a(Ljava/util/Date;)V

    return-void
.end method

.method public final n()V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->d:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->d:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/d;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/wdullaer/materialdatetimepicker/date/b;->a(Lcom/wdullaer/materialdatetimepicker/date/d;III)Lcom/wdullaer/materialdatetimepicker/date/b;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->d:Ljava/util/Date;

    if-eqz v0, :cond_1

    :cond_1
    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->i()Ldouzifly/list/widget/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/ColorPicker;->getSelectedColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(I)V

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$s;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$s;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    if-nez p0, :cond_2

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.support.v7.app.AppCompatActivity"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    check-cast p0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "Datepickerdialog"

    invoke-virtual {v1, v0, v2}, Lcom/wdullaer/materialdatetimepicker/date/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final o()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->d:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->d:Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/time/m;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/wdullaer/materialdatetimepicker/time/j;->a(Lcom/wdullaer/materialdatetimepicker/time/m;IIZ)Lcom/wdullaer/materialdatetimepicker/time/j;

    move-result-object v0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->i()Ldouzifly/list/widget/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Ldouzifly/list/widget/ColorPicker;->getSelectedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/j;->b(I)V

    if-nez p0, :cond_1

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.support.v7.app.AppCompatActivity"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "Timepickerdialog"

    invoke-virtual {v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/time/j;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Ldouzifly/list/ui/home/DetailActivity;->a:Ldouzifly/list/ui/home/a;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/a;->d()I

    move-result v0

    if-ne p1, v0, :cond_4

    sget v0, Landroid/support/v7/app/AppCompatActivity;->RESULT_OK:I

    if-ne p2, v0, :cond_4

    if-nez p3, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    const-string v0, "id"

    const-wide/16 v2, 0x1

    neg-long v2, v2

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v3, :cond_1

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_1
    invoke-virtual {v3}, Ldouzifly/list/b/b;->h()Ldouzifly/list/b/c;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_2
    invoke-virtual {v3}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    sget-object v2, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v2, v0, v1}, Ldouzifly/list/b/e;->b(J)Ldouzifly/list/b/c;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->p:Ldouzifly/list/b/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group changed to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->p:Ldouzifly/list/b/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ldouzifly/list/b/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ldouzifly/list/ui/home/DetailActivity;->a:Ldouzifly/list/ui/home/a;

    invoke-static {v1}, Ldouzifly/list/ui/home/a;->a(Ldouzifly/list/ui/home/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldouzifly/list/f/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->p:Ldouzifly/list/b/c;

    if-nez v0, :cond_3

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_3
    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/DetailActivity;->a(Ldouzifly/list/b/c;)V

    :cond_4
    return-void

    :cond_5
    const-string v0, "not changed"

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040028

    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/DetailActivity;->setContentView(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->t()V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->p()V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/a/a/i;->a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/a/a/i;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/a/a/i;->b(J)Lcom/a/a/i;

    invoke-virtual {v0}, Lcom/a/a/i;->a()V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->g()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    sget-object v0, Lcom/mikepenz/google_material_typeface_library/b;->i:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v0, Lcom/mikepenz/iconics/typeface/a;

    const v2, 0x7f0c002f

    invoke-static {v0, v2}, Ldouzifly/list/f/e;->b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->g()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$q;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$q;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->h()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->r()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final p()V
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Ldouzifly/list/ui/home/DetailActivity;->a:Ldouzifly/list/ui/home/a;

    invoke-virtual {v3}, Ldouzifly/list/ui/home/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    int-to-long v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    sget-object v2, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v2, v0, v1}, Ldouzifly/list/b/e;->c(J)Ldouzifly/list/b/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v0, :cond_1

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_1
    invoke-virtual {v0}, Ldouzifly/list/b/b;->b()J

    move-result-wide v0

    int-to-long v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v1, :cond_2

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_2
    invoke-virtual {v1}, Ldouzifly/list/b/b;->b()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->d:Ljava/util/Date;

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v0, :cond_3

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_3
    invoke-virtual {v0}, Ldouzifly/list/b/b;->h()Ldouzifly/list/b/c;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_4
    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/DetailActivity;->a(Ldouzifly/list/b/c;)V

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Date;

    goto :goto_0
.end method

.method public final q()Ldouzifly/list/b/c;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->p:Ldouzifly/list/b/c;

    return-object v0
.end method

.method public final r()V
    .locals 5

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->d()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v0, :cond_2

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_2
    invoke-virtual {v0}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v0, :cond_3

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_3
    invoke-virtual {v0}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v0, :cond_4

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_4
    invoke-virtual {v0}, Ldouzifly/list/b/b;->f()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->d()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ldouzifly/list/widget/d;->a(I)F

    move-result v1

    int-to-float v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ldouzifly/list/widget/d;->a(I)F

    move-result v1

    int-to-float v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ldouzifly/list/widget/d;->a(I)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->j()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ldouzifly/list/widget/d;->a(I)F

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-wide/16 v2, 0xc8

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$o;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$o;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v2, v3, v0}, Ldouzifly/list/f/h;->a(JLb/d/a/a;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v0, :cond_5

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_5
    invoke-virtual {v0}, Ldouzifly/list/b/b;->b()J

    move-result-wide v0

    int-to-long v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v1, :cond_6

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_6
    invoke-virtual {v1}, Ldouzifly/list/b/b;->b()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_1
    invoke-virtual {p0, v0}, Ldouzifly/list/ui/home/DetailActivity;->a(Ljava/util/Date;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v0, :cond_7

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_7
    invoke-virtual {v0}, Ldouzifly/list/b/b;->b()J

    move-result-wide v0

    int-to-long v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v1, :cond_8

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_8
    invoke-virtual {v1}, Ldouzifly/list/b/b;->b()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->b:Ljava/util/Date;

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Date;

    goto :goto_1
.end method

.method public final s()V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    nop

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    nop

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->i()Ldouzifly/list/widget/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/ColorPicker;->getSelectedColor()I

    move-result v6

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->b:Ljava/util/Date;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    iget-object v7, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v7, :cond_2

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_2
    invoke-virtual {v7}, Ldouzifly/list/b/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    iget-object v2, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v2, :cond_3

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_3
    invoke-virtual {v2, v4}, Ldouzifly/list/b/b;->a(Ljava/lang/String;)V

    move v2, v3

    :cond_4
    iget-object v4, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v4, :cond_5

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_5
    invoke-virtual {v4}, Ldouzifly/list/b/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    iget-object v2, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v2, :cond_6

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_6
    invoke-virtual {v2, v5}, Ldouzifly/list/b/b;->b(Ljava/lang/String;)V

    move v2, v3

    :cond_7
    iget-object v4, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v4, :cond_8

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_8
    invoke-virtual {v4}, Ldouzifly/list/b/b;->d()I

    move-result v4

    if-eq v4, v6, :cond_b

    iget-object v2, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v2, :cond_9

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_9
    invoke-virtual {v2, v6}, Ldouzifly/list/b/b;->b(I)V

    sget-object v2, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    sget-object v4, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v4}, Ldouzifly/list/d/a;->m()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ldouzifly/list/b/e;->b(J)Ldouzifly/list/b/c;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ldouzifly/list/b/c;->f()V

    sget-object v2, Lb/g;->a:Lb/g;

    :cond_a
    move v2, v3

    :cond_b
    iget-object v4, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v4, :cond_c

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_c
    invoke-virtual {v4}, Ldouzifly/list/b/b;->b()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_e

    iget-object v2, p0, Ldouzifly/list/ui/home/DetailActivity;->c:Ldouzifly/list/b/b;

    if-nez v2, :cond_d

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_d
    invoke-virtual {v2, v0, v1}, Ldouzifly/list/b/b;->a(J)V

    move v2, v3

    :cond_e
    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity;->p:Ldouzifly/list/b/c;

    if-eqz v0, :cond_11

    :goto_1
    if-eqz v3, :cond_f

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$r;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$r;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->a(Lb/d/a/a;)V

    :cond_f
    return-void

    :cond_10
    const-wide/16 v0, 0x0

    goto/16 :goto_0

    :cond_11
    move v3, v2

    goto :goto_1
.end method

.method public final t()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->c()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$j;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$j;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$k;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$k;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->d()Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/b;

    iget-object v2, p0, Ldouzifly/list/ui/home/DetailActivity;->q:Lb/d/a/b;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Ldouzifly/list/ui/home/DetailActivity;->o:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->f()Landroid/widget/EditText;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$l;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$l;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->e()Landroid/widget/EditText;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$m;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$m;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity;->j()Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$n;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$n;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-direct {v0, v2}, Ldouzifly/list/ui/home/b;-><init>(Lb/d/a/b;)V

    goto :goto_0
.end method

.method public final u()V
    .locals 3

    new-instance v0, Ldouzifly/list/ui/home/DetailActivity$t;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/DetailActivity$t;-><init>(Ldouzifly/list/ui/home/DetailActivity;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    new-instance v1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v2, Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Ldouzifly/list/ui/home/GroupEditorActivity;->a:Ldouzifly/list/ui/home/c;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v0, Ldouzifly/list/ui/home/DetailActivity;->a:Ldouzifly/list/ui/home/a;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/a;->d()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ldouzifly/list/ui/home/DetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
