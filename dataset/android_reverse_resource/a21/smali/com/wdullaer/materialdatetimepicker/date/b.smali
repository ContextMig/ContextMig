.class public Lcom/wdullaer/materialdatetimepicker/date/b;
.super Landroid/app/DialogFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wdullaer/materialdatetimepicker/date/a;


# static fields
.field private static a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/text/SimpleDateFormat;


# instance fields
.field private A:Z

.field private B:Lcom/wdullaer/materialdatetimepicker/a;

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private final c:Ljava/util/Calendar;

.field private d:Lcom/wdullaer/materialdatetimepicker/date/f;

.field private e:Ljava/util/HashSet;

.field private f:Landroid/content/DialogInterface$OnCancelListener;

.field private g:Landroid/content/DialogInterface$OnDismissListener;

.field private h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/wdullaer/materialdatetimepicker/date/g;

.field private o:Lcom/wdullaer/materialdatetimepicker/date/r;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/util/Calendar;

.field private u:Ljava/util/Calendar;

.field private v:[Ljava/util/Calendar;

.field private w:[Ljava/util/Calendar;

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/date/b;->a:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/wdullaer/materialdatetimepicker/date/b;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->e:Ljava/util/HashSet;

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->p:I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->q:I

    const/16 v0, 0x76c

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->r:I

    const/16 v0, 0x834

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->s:I

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->C:Z

    return-void
.end method

.method public static a(Lcom/wdullaer/materialdatetimepicker/date/f;III)Lcom/wdullaer/materialdatetimepicker/date/b;
    .locals 1

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/b;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/b;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(Lcom/wdullaer/materialdatetimepicker/date/f;III)V

    return-object v0
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/date/b;)Lcom/wdullaer/materialdatetimepicker/date/f;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->d:Lcom/wdullaer/materialdatetimepicker/date/f;

    return-object v0
.end method

.method private a(Ljava/util/Calendar;)V
    .locals 3

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v2, v1}, Ljava/util/Calendar;->set(II)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/wdullaer/materialdatetimepicker/date/b;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    return-object v0
.end method

.method private b(I)V
    .locals 10

    const-wide/16 v8, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->j:Landroid/widget/LinearLayout;

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3f866666    # 1.05f

    invoke-static {v2, v3, v4}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->C:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iput-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->C:Z

    :cond_0
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->n:Lcom/wdullaer/materialdatetimepicker/date/g;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/date/g;->a()V

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->p:I

    if-eq v3, p1, :cond_1

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v5}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->p:I

    :cond_1
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->E:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->m:Landroid/widget/TextView;

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3f8ccccd    # 1.1f

    invoke-static {v2, v3, v4}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->C:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iput-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->C:Z

    :cond_2
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/date/r;->a()V

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->p:I

    if-eq v3, p1, :cond_3

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v6}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->p:I

    :cond_3
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    sget-object v2, Lcom/wdullaer/materialdatetimepicker/date/b;->a:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->F:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->G:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Z)V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->l:Landroid/widget/TextView;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/b;->b:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->m:Landroid/widget/TextView;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/date/b;->a:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    const/16 v2, 0x18

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-static {v1, v0}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/wdullaer/materialdatetimepicker/date/k;
    .locals 2

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/k;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/k;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public a(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->a(Ljava/util/Calendar;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->k()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(I)V

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(Z)V

    return-void
.end method

.method public a(III)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->k()V

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(Z)V

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/e;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:Z

    return-void
.end method

.method public b(Lcom/wdullaer/materialdatetimepicker/date/f;III)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->d:Lcom/wdullaer/materialdatetimepicker/date/f;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    iput-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    iput-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->z:Z

    iput-boolean v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:Z

    return v0
.end method

.method public c()[Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:[Ljava/util/Calendar;

    return-object v0
.end method

.method public d()[Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->w:[Ljava/util/Calendar;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->q:I

    return v0
.end method

.method public f()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->w:[Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->w:[Ljava/util/Calendar;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->t:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->t:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->r:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->t:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->r:I

    goto :goto_0
.end method

.method public g()I
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->w:[Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->w:[Ljava/util/Calendar;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->w:[Ljava/util/Calendar;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->s:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->s:I

    goto :goto_0
.end method

.method public h()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->t:Ljava/util/Calendar;

    return-object v0
.end method

.method public i()Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    return-object v0
.end method

.method public j()V
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->B:Lcom/wdullaer/materialdatetimepicker/a;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/a;->c()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->f:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->f:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->j()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/wdullaer/materialdatetimepicker/f;->date_picker_year:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/wdullaer/materialdatetimepicker/f;->date_picker_month_and_day:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    const-string v2, "year"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    const-string v2, "month"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const-string v0, "DatePickerDialog"

    const-string v1, "onCreateView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    sget v0, Lcom/wdullaer/materialdatetimepicker/g;->mdtp_date_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->date_picker_header:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->i:Landroid/widget/TextView;

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->date_picker_month_and_day:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->date_picker_month:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->k:Landroid/widget/TextView;

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->date_picker_day:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->l:Landroid/widget/TextView;

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->date_picker_year:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    const-string v0, "week_start"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->q:I

    const-string v0, "year_start"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->r:I

    const-string v0, "year_end"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->s:I

    const-string v0, "current_view"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "list_position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "list_position_offset"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "min_date"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->t:Ljava/util/Calendar;

    const-string v0, "max_date"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    const-string v0, "highlighted_days"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/util/Calendar;

    check-cast v0, [Ljava/util/Calendar;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:[Ljava/util/Calendar;

    const-string v0, "selectable_days"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/util/Calendar;

    check-cast v0, [Ljava/util/Calendar;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->w:[Ljava/util/Calendar;

    const-string v0, "theme_dark"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:Z

    const-string v0, "accent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    const-string v0, "vibrate"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->z:Z

    const-string v0, "dismiss"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:Z

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-direct {v0, v7, p0}, Lcom/wdullaer/materialdatetimepicker/date/o;-><init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/a;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->n:Lcom/wdullaer/materialdatetimepicker/date/g;

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-direct {v0, v7, p0}, Lcom/wdullaer/materialdatetimepicker/date/r;-><init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/a;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_day_picker_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->D:Ljava/lang/String;

    sget v1, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_select_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->E:Ljava/lang/String;

    sget v1, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_year_picker_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->F:Ljava/lang/String;

    sget v1, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_select_year:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->G:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_view_animator_dark_theme:I

    :goto_1
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->animator:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->n:Lcom/wdullaer/materialdatetimepicker/date/g;

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setDateMillis(J)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v1, v0}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->ok:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/date/c;

    invoke-direct {v1, p0}, Lcom/wdullaer/materialdatetimepicker/date/c;-><init>(Lcom/wdullaer/materialdatetimepicker/date/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "Roboto-Medium"

    invoke-static {v7, v1}, Lcom/wdullaer/materialdatetimepicker/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    sget v1, Lcom/wdullaer/materialdatetimepicker/f;->cancel:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v5, Lcom/wdullaer/materialdatetimepicker/date/d;

    invoke-direct {v5, p0}, Lcom/wdullaer/materialdatetimepicker/date/d;-><init>(Lcom/wdullaer/materialdatetimepicker/date/b;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "Roboto-Medium"

    invoke-static {v7, v5}, Lcom/wdullaer/materialdatetimepicker/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/content/Context;)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    iput v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    :cond_0
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->i:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->i:Landroid/widget/TextView;

    iget v8, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    invoke-static {v8}, Lcom/wdullaer/materialdatetimepicker/j;->a(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_1
    sget v5, Lcom/wdullaer/materialdatetimepicker/f;->day_picker_selected_date_layout:I

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v8, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/r;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/r;->setAccentColor(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->n:Lcom/wdullaer/materialdatetimepicker/date/g;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/g;->setAccentColor(I)V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(Z)V

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(I)V

    const/4 v0, -0x1

    if-eq v4, v0, :cond_3

    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->n:Lcom/wdullaer/materialdatetimepicker/date/g;

    invoke-virtual {v0, v4}, Lcom/wdullaer/materialdatetimepicker/date/g;->a(I)V

    :cond_3
    :goto_3
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/a;

    invoke-direct {v0, v7}, Lcom/wdullaer/materialdatetimepicker/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->B:Lcom/wdullaer/materialdatetimepicker/a;

    return-object v6

    :cond_4
    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_view_animator:I

    goto/16 :goto_1

    :cond_5
    const/16 v5, 0x8

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-virtual {v0, v4, v3}, Lcom/wdullaer/materialdatetimepicker/date/r;->a(II)V

    goto :goto_3

    :cond_7
    move v3, v1

    move v4, v2

    move v2, v0

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->g:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->g:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->B:Lcom/wdullaer/materialdatetimepicker/a;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/a;->b()V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->B:Lcom/wdullaer/materialdatetimepicker/a;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/a;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "year"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "month"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "day"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "week_start"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "year_start"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->r:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "year_end"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "current_view"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, -0x1

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->p:I

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->n:Lcom/wdullaer/materialdatetimepicker/date/g;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/g;->getMostVisiblePosition()I

    move-result v0

    :cond_0
    :goto_0
    const-string v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "min_date"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->t:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "max_date"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "highlighted_days"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:[Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "selectable_days"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->w:[Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "theme_dark"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "accent"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vibrate"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dismiss"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->p:I

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/r;->getFirstVisiblePosition()I

    move-result v0

    const-string v1, "list_position_offset"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/r;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/date/r;->getFirstPositionOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
