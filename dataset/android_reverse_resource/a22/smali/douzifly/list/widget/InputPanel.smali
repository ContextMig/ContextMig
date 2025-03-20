.class public final Ldouzifly/list/widget/InputPanel;
.super Lio/codetail/widget/RevealFrameLayout;

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/date/d;
.implements Lcom/wdullaer/materialdatetimepicker/time/m;


# static fields
.field private static final synthetic n:[Lb/f/e;


# instance fields
.field private b:Ljava/util/Date;

.field private c:I

.field private d:Ljava/util/Date;

.field private final e:Lb/b;

.field private final f:Lb/b;

.field private final g:Lb/b;

.field private final h:Lb/b;

.field private final i:Lb/b;

.field private final j:Lb/b;

.field private final k:Lb/b;

.field private final l:Lb/b;

.field private m:Ldouzifly/list/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/InputPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "editText"

    const-string v5, "getEditText()Landroid/widget/EditText;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/InputPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "contentEditText"

    const-string v5, "getContentEditText()Landroid/widget/EditText;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/InputPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "addReminder"

    const-string v5, "getAddReminder()Lcom/github/clans/fab/FloatingActionButton;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x3

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/InputPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "colorPicker"

    const-string v5, "getColorPicker()Ldouzifly/list/widget/ColorPicker;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x4

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/InputPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "revealView"

    const-string v5, "getRevealView()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x5

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/InputPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtReminder"

    const-string v5, "getTxtReminder()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x6

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/InputPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "reminderDel"

    const-string v5, "getReminderDel()Landroid/view/View;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x7

    new-instance v0, Lb/d/b/o;

    const-class v3, Ldouzifly/list/widget/InputPanel;

    invoke-static {v3}, Lb/d/b/p;->a(Ljava/lang/Class;)Lb/f/b;

    move-result-object v3

    const-string v4, "txtGroup"

    const-string v5, "getTxtGroup()Landroid/widget/TextView;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/o;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/n;)Lb/f/i;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/widget/InputPanel;->n:[Lb/f/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lio/codetail/widget/RevealFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    neg-int v0, v0

    iput v0, p0, Ldouzifly/list/widget/InputPanel;->c:I

    new-instance v0, Ldouzifly/list/widget/InputPanel$d;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$d;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->e:Lb/b;

    new-instance v0, Ldouzifly/list/widget/InputPanel$c;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$c;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->f:Lb/b;

    new-instance v0, Ldouzifly/list/widget/InputPanel$a;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$a;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->g:Lb/b;

    new-instance v0, Ldouzifly/list/widget/InputPanel$b;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$b;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->h:Lb/b;

    new-instance v0, Ldouzifly/list/widget/InputPanel$i;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$i;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->i:Lb/b;

    new-instance v0, Ldouzifly/list/widget/InputPanel$n;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$n;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->j:Lb/b;

    new-instance v0, Ldouzifly/list/widget/InputPanel$h;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$h;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->k:Lb/b;

    new-instance v0, Ldouzifly/list/widget/InputPanel$m;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$m;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->l:Lb/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getTxtReminder()Landroid/widget/TextView;

    move-result-object v1

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getContentEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->b:Ljava/util/Date;

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/b;III)V
    .locals 2

    new-instance v0, Ljava/util/Date;

    add-int/lit16 v1, p2, -0x76c

    invoke-direct {v0, v1, p3, p4}, Ljava/util/Date;-><init>(III)V

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->b:Ljava/util/Date;

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->g()V

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

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->b:Ljava/util/Date;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/Date;->setHours(I)V

    :cond_0
    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->b:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/Date;->setMinutes(I)V

    :cond_1
    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->b:Ljava/util/Date;

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->d:Ljava/util/Date;

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->e()V

    return-void
.end method

.method public final a(Ldouzifly/list/b/c;)V
    .locals 2

    const-string v0, "group"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldouzifly/list/widget/InputPanel;->m:Ldouzifly/list/b/c;

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getTxtGroup()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->m:Ldouzifly/list/b/c;

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

.method public final b()V
    .locals 3

    new-instance v0, Ldouzifly/list/widget/InputPanel$l;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$l;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    iget v0, p0, Ldouzifly/list/widget/InputPanel;->c:I

    iput v0, p0, Ldouzifly/list/widget/InputPanel;->c:I

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Ldouzifly/list/ui/home/GroupEditorActivity;->a:Ldouzifly/list/ui/home/c;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/app/Activity;

    sget-object v2, Ldouzifly/list/ui/home/MainActivity;->a:Ldouzifly/list/ui/home/g;

    invoke-virtual {v2}, Ldouzifly/list/ui/home/g;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ldouzifly/list/widget/d;->a(I)F

    move-result v1

    const/4 v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getContentEditText()Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ldouzifly/list/widget/d;->a(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getTxtGroup()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Ldouzifly/list/widget/FontSizeBar;->a:Ldouzifly/list/widget/d;

    sget-object v2, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v2}, Ldouzifly/list/d/a;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ldouzifly/list/widget/d;->a(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ldouzifly/list/widget/InputPanel;->b:Ljava/util/Date;

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->e()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->b:Ljava/util/Date;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getTxtReminder()Landroid/widget/TextView;

    move-result-object v1

    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getReminderDel()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getReminderDel()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getTxtReminder()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->b:Ljava/util/Date;

    if-nez v0, :cond_1

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_1
    invoke-static {v0}, Ldouzifly/list/f/b;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getTxtReminder()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Ldouzifly/list/widget/InputPanel;->b:Ljava/util/Date;

    if-nez v1, :cond_2

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_2
    invoke-static {v0, v1}, Ldouzifly/list/f/b;->a(Landroid/widget/TextView;Ljava/util/Date;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->d:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->d:Ljava/util/Date;

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

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getColorPicker()Ldouzifly/list/widget/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/ColorPicker;->getSelectedColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(I)V

    sget-object v0, Ldouzifly/list/widget/InputPanel$j;->a:Ldouzifly/list/widget/InputPanel$j;

    check-cast v0, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ldouzifly/list/widget/InputPanel$k;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$k;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.support.v7.app.AppCompatActivity"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "Datepickerdialog"

    invoke-virtual {v1, v0, v2}, Lcom/wdullaer/materialdatetimepicker/date/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->d:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->d:Ljava/util/Date;

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

    move-result-object v1

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getColorPicker()Ldouzifly/list/widget/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/ColorPicker;->getSelectedColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/j;->b(I)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.support.v7.app.AppCompatActivity"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "Timepickerdialog"

    invoke-virtual {v1, v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/j;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public final getAddReminder()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->g:Lb/b;

    sget-object v1, Ldouzifly/list/widget/InputPanel;->n:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    return-object v0
.end method

.method public final getColorPicker()Ldouzifly/list/widget/ColorPicker;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->h:Lb/b;

    sget-object v1, Ldouzifly/list/widget/InputPanel;->n:[Lb/f/e;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/widget/ColorPicker;

    return-object v0
.end method

.method public final getContentEditText()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->f:Lb/b;

    sget-object v1, Ldouzifly/list/widget/InputPanel;->n:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public final getEditText()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->e:Lb/b;

    sget-object v1, Ldouzifly/list/widget/InputPanel;->n:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public final getInitDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->d:Ljava/util/Date;

    return-object v0
.end method

.method public final getReminderDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->b:Ljava/util/Date;

    return-object v0
.end method

.method public final getReminderDel()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->k:Lb/b;

    sget-object v1, Ldouzifly/list/widget/InputPanel;->n:[Lb/f/e;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getReqCode()I
    .locals 1

    iget v0, p0, Ldouzifly/list/widget/InputPanel;->c:I

    return v0
.end method

.method public final getRevealView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->i:Lb/b;

    sget-object v1, Ldouzifly/list/widget/InputPanel;->n:[Lb/f/e;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getSelectedGroup()Ldouzifly/list/b/c;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->m:Ldouzifly/list/b/c;

    return-object v0
.end method

.method public final getTxtGroup()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->l:Lb/b;

    sget-object v1, Ldouzifly/list/widget/InputPanel;->n:[Lb/f/e;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTxtReminder()Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel;->j:Lb/b;

    sget-object v1, Ldouzifly/list/widget/InputPanel;->n:[Lb/f/e;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lio/codetail/widget/RevealFrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getContentEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getTxtGroup()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v0, Ldouzifly/list/widget/InputPanel$e;->a:Ldouzifly/list/widget/InputPanel$e;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Ldouzifly/list/widget/InputPanel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getAddReminder()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    sget-object v0, Lcom/mikepenz/google_material_typeface_library/b;->i:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v0, Lcom/mikepenz/iconics/typeface/a;

    const v2, 0x7f0c002f

    invoke-static {v0, v2}, Ldouzifly/list/f/e;->b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getAddReminder()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    new-instance v0, Ldouzifly/list/widget/InputPanel$f;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$f;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getTxtReminder()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Ldouzifly/list/f/d;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->c()V

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getTxtGroup()Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Ldouzifly/list/widget/InputPanel$g;

    invoke-direct {v0, p0}, Ldouzifly/list/widget/InputPanel$g;-><init>(Ldouzifly/list/widget/InputPanel;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setInitDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/InputPanel;->d:Ljava/util/Date;

    return-void
.end method

.method public final setReminderDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/InputPanel;->b:Ljava/util/Date;

    return-void
.end method

.method public final setReqCode(I)V
    .locals 0

    iput p1, p0, Ldouzifly/list/widget/InputPanel;->c:I

    return-void
.end method

.method public final setSelectedGroup(Ldouzifly/list/b/c;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/InputPanel;->m:Ldouzifly/list/b/c;

    return-void
.end method

.method public setVisibility(I)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lio/codetail/widget/RevealFrameLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getColorPicker()Ldouzifly/list/widget/ColorPicker;

    move-result-object v1

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getColorPicker()Ldouzifly/list/widget/ColorPicker;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ldouzifly/list/widget/ColorPicker;->getColors()[Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ldouzifly/list/widget/ColorPicker;->getColors()[Ljava/lang/Long;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v2, v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Ldouzifly/list/widget/ColorPicker;->setSelected(I)V

    const/4 v0, 0x0

    check-cast v0, Ldouzifly/list/b/c;

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->m()J

    move-result-wide v0

    sget-object v2, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    invoke-virtual {v2}, Ldouzifly/list/b/d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    invoke-virtual {v0}, Ldouzifly/list/b/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/c;

    :goto_1
    if-nez v0, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    invoke-virtual {p0, v0}, Ldouzifly/list/widget/InputPanel;->a(Ldouzifly/list/b/c;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel;->getColorPicker()Ldouzifly/list/widget/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/ColorPicker;->getColors()[Ljava/lang/Long;

    move-result-object v0

    aget-object v0, v0, v6

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_0

    :cond_3
    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v1}, Ldouzifly/list/d/a;->m()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldouzifly/list/b/e;->b(J)Ldouzifly/list/b/c;

    move-result-object v0

    goto :goto_1
.end method
