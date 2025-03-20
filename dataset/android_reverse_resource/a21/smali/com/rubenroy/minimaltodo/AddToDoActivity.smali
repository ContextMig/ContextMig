.class public Lcom/rubenroy/minimaltodo/AddToDoActivity;
.super Landroid/support/v7/a/u;

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/date/f;
.implements Lcom/wdullaer/materialdatetimepicker/time/t;


# instance fields
.field i:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/support/v7/widget/SwitchCompat;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/EditText;

.field private p:Lcom/rubenroy/minimaltodo/x;

.field private q:Landroid/support/design/widget/FloatingActionButton;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Landroid/support/v7/widget/Toolbar;

.field private u:Ljava/util/Date;

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Landroid/widget/LinearLayout;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v7/a/u;-><init>()V

    iput-boolean v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->w:Z

    iput-boolean v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->x:Z

    return-void
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/AddToDoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/AddToDoActivity;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/AddToDoActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->m()V

    return-void
.end method

.method static synthetic c(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic d(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Lcom/rubenroy/minimaltodo/x;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    return-object v0
.end method

.method static synthetic e(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/rubenroy/minimaltodo/AddToDoActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private m()V
    .locals 5

    const/16 v4, 0xb

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    if-eqz v0, :cond_1

    const-string v0, "d MMM, yyyy"

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "k:mm"

    :goto_0
    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-static {v0, v2}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "h:mm a"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->n:Landroid/widget/EditText;

    const v1, 0x7f070027

    invoke-virtual {p0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    :goto_2
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    const-string v1, "OskarSchindler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Imagined Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    const-string v0, "k:mm"

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    :cond_3
    const-string v0, "h:mm a"

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public a(I)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->r:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v2, v1}, Lcom/rubenroy/minimaltodo/x;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    :cond_0
    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    iget-boolean v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->s:Z

    invoke-virtual {v1, v2}, Lcom/rubenroy/minimaltodo/x;->a(Z)V

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/rubenroy/minimaltodo/x;->a(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    iget v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->v:I

    invoke-virtual {v1, v2}, Lcom/rubenroy/minimaltodo/x;->a(I)V

    const-string v1, "com.avjindersinghsekhon.com.avjindersinghsekhon.minimaltodo.MainActivity"

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->setResult(ILandroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/rubenroy/minimaltodo/x;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string v4, "OskarSchindler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time set: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->l()V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->k()V

    return-void
.end method

.method public a(III)V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "My time-machine is a bit rusty"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_1
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    :goto_1
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->l()V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->j()V

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    goto :goto_1
.end method

.method public a(Landroid/widget/EditText;)V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/b;III)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(III)V

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;II)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(II)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->l:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 4

    const-wide/16 v2, 0x1f4

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->l()V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/rubenroy/minimaltodo/h;

    invoke-direct {v1, p0}, Lcom/rubenroy/minimaltodo/h;-><init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/rubenroy/minimaltodo/i;

    invoke-direct {v1, p0}, Lcom/rubenroy/minimaltodo/i;-><init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public j()V
    .locals 3

    const-string v0, "d MMM, yyyy"

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->n:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-static {v0, v2}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public k()V
    .locals 3

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "k:mm"

    :goto_0
    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->o:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-static {v0, v2}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "h:mm a"

    goto :goto_0
.end method

.method public l()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OskarSchindler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DATE is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f070026

    invoke-virtual {p0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->m:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    const-string v0, "d MMM, yyyy"

    invoke-static {v0, v2}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "k:mm"

    invoke-static {v1, v2}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07002e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "h:mm"

    invoke-static {v0, v2}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "a"

    invoke-static {v0, v2}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->m:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rubenroy/minimaltodo/x;->a(Ljava/util/Date;)V

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(I)V

    invoke-super {p0}, Landroid/support/v7/a/u;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->i:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    const-string v0, "com.avjindersekhon.themepref"

    invoke-virtual {p0, v0, v3}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.avjindersekhon.savedtheme"

    const-string v4, "com.avjindersekon.lighttheme"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->z:Ljava/lang/String;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->z:Ljava/lang/String;

    const-string v1, "com.avjindersekon.lighttheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->setTheme(I)V

    const-string v0, "OskarSchindler"

    const-string v1, "Light Theme"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/a/u;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d002d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    const v0, 0x7f0e007d

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->t:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->t:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->f()Landroid/support/v7/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->f()Landroid/support/v7/a/a;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/a/a;->a(F)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->f()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/a/a;->b(Z)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->f()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->f()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.avjindersinghsekhon.com.avjindersinghsekhon.minimaltodo.MainActivity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/x;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->s:Z

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->p:Lcom/rubenroy/minimaltodo/x;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->e()I

    move-result v0

    iput v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->v:I

    const v0, 0x7f0e0071

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0e0072

    invoke-virtual {p0, v1}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->z:Ljava/lang/String;

    const-string v5, "com.avjindersekon.darktheme"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->y:Landroid/widget/LinearLayout;

    const v0, 0x7f0e0074

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0e006f

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->j:Landroid/widget/EditText;

    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->k:Landroid/support/v7/widget/SwitchCompat;

    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->q:Landroid/support/design/widget/FloatingActionButton;

    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->y:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/rubenroy/minimaltodo/b;

    invoke-direct {v1, p0}, Lcom/rubenroy/minimaltodo/b;-><init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->s:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->l()V

    invoke-virtual {p0, v2}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->c(Z)V

    :cond_3
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->k:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->m:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/rubenroy/minimaltodo/c;

    invoke-direct {v1, p0}, Lcom/rubenroy/minimaltodo/c;-><init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->k:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->b(Z)V

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->k:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->s:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->u:Ljava/util/Date;

    if-eqz v0, :cond_6

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->k:Landroid/support/v7/widget/SwitchCompat;

    new-instance v1, Lcom/rubenroy/minimaltodo/d;

    invoke-direct {v1, p0}, Lcom/rubenroy/minimaltodo/d;-><init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->q:Landroid/support/design/widget/FloatingActionButton;

    new-instance v1, Lcom/rubenroy/minimaltodo/e;

    invoke-direct {v1, p0}, Lcom/rubenroy/minimaltodo/e;-><init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e007f

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->n:Landroid/widget/EditText;

    const v0, 0x7f0e0080

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->o:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->n:Landroid/widget/EditText;

    new-instance v1, Lcom/rubenroy/minimaltodo/f;

    invoke-direct {v1, p0}, Lcom/rubenroy/minimaltodo/f;-><init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->o:Landroid/widget/EditText;

    new-instance v1, Lcom/rubenroy/minimaltodo/g;

    invoke-direct {v1, p0}, Lcom/rubenroy/minimaltodo/g;-><init>(Lcom/rubenroy/minimaltodo/AddToDoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->m()V

    return-void

    :cond_5
    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->setTheme(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v7/a/u;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/b/ax;->c(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->i:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    const-string v1, "Action"

    const-string v2, "Discard Todo"

    invoke-virtual {v0, p0, v1, v2}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(I)V

    invoke-static {p0}, Landroid/support/v4/b/ax;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Landroid/widget/EditText;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/a/u;->onResume()V

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/AddToDoActivity;->i:Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    invoke-virtual {v0, p0}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;)V

    return-void
.end method
