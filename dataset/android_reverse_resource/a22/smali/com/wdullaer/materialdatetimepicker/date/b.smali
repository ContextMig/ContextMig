.class public Lcom/wdullaer/materialdatetimepicker/date/b;
.super Landroid/app/DialogFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wdullaer/materialdatetimepicker/date/a;


# static fields
.field private static a:Ljava/text/SimpleDateFormat;

.field private static b:Ljava/text/SimpleDateFormat;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Lcom/wdullaer/materialdatetimepicker/a;

.field private K:Z

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private final c:Ljava/util/Calendar;

.field private d:Lcom/wdullaer/materialdatetimepicker/date/d;

.field private e:Ljava/util/HashSet;

.field private f:Landroid/content/DialogInterface$OnCancelListener;

.field private g:Landroid/content/DialogInterface$OnDismissListener;

.field private h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/wdullaer/materialdatetimepicker/date/e;

.field private o:Lcom/wdullaer/materialdatetimepicker/date/o;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/util/Calendar;

.field private v:Ljava/util/Calendar;

.field private w:[Ljava/util/Calendar;

.field private x:[Ljava/util/Calendar;

.field private y:Z

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
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->e:Ljava/util/HashSet;

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->p:I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->q:I

    const/16 v0, 0x76c

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->r:I

    const/16 v0, 0x834

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->s:I

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:Z

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->z:Z

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:I

    iput-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->B:Z

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->C:Z

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->D:Z

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->E:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_ok:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->F:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_cancel:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->H:I

    iput-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->K:Z

    return-void
.end method

.method public static a(Lcom/wdullaer/materialdatetimepicker/date/d;III)Lcom/wdullaer/materialdatetimepicker/date/b;
    .locals 1

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/b;

    invoke-direct {v0}, Lcom/wdullaer/materialdatetimepicker/date/b;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(Lcom/wdullaer/materialdatetimepicker/date/d;III)V

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
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/b;->d(Ljava/util/Calendar;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->t:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
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

    :cond_2
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

    goto :goto_0
.end method

.method private b(Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/date/b;->d(III)Z

    move-result v0

    return v0
.end method

.method private c(I)V
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

    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->K:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iput-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->K:Z

    :cond_0
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->n:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/date/e;->a()V

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

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->L:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->M:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->m:Landroid/widget/TextView;

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3f8ccccd    # 1.1f

    invoke-static {v2, v3, v4}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-boolean v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->K:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iput-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->K:Z

    :cond_2
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-virtual {v3}, Lcom/wdullaer/materialdatetimepicker/date/o;->a()V

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

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->N:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->O:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(III)Z
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ge p1, v6, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-le p1, v6, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-lt p2, v6, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-gt p2, v6, :cond_3

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-lt p3, v6, :cond_0

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-le p3, v5, :cond_1

    goto :goto_1
.end method

.method private c(Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/date/b;->e(III)Z

    move-result v0

    return v0
.end method

.method private d(Ljava/util/Calendar;)V
    .locals 12

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    if-eqz v0, :cond_2

    const-wide v2, 0x7fffffffffffffffL

    iget-object v8, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    array-length v9, v8

    const/4 v0, 0x0

    move-object v1, p1

    move-wide v4, v2

    :goto_0
    if-ge v0, v9, :cond_0

    aget-object v2, v8, v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    move-wide v4, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/b;->b(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/b;->c(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1
.end method

.method private d(III)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge p1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge p2, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt p2, v2, :cond_0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge p3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private e(III)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le p1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le p2, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-le p3, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private l()V
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

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/c;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/c;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/wdullaer/materialdatetimepicker/date/h;
    .locals 2

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/h;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/h;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public a(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->a(Ljava/util/Calendar;)V

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->l()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->c(I)V

    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/b;->a(Z)V

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

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->l()V

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/date/b;->a(Z)V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->D:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->k()V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->f:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/c;)V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:I

    return-void
.end method

.method public b(Lcom/wdullaer/materialdatetimepicker/date/d;III)V
    .locals 2

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->d:Lcom/wdullaer/materialdatetimepicker/date/d;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:Z

    return v0
.end method

.method public b(III)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/b;->c(III)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/b;->d(III)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/date/b;->e(III)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:I

    return v0
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

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    const/4 v1, 0x0

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

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->r:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

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

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->s:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->s:I

    goto :goto_0
.end method

.method public h()Ljava/util/Calendar;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    aget-object v0, v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->r:I

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public i()Ljava/util/Calendar;
    .locals 3

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->s:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x5

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x2

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method public j()V
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->J:Lcom/wdullaer/materialdatetimepicker/a;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/a;->c()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 5

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->d:Lcom/wdullaer/materialdatetimepicker/date/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->d:Lcom/wdullaer/materialdatetimepicker/date/d;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/wdullaer/materialdatetimepicker/date/d;->a(Lcom/wdullaer/materialdatetimepicker/date/b;III)V

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

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->c(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/wdullaer/materialdatetimepicker/f;->date_picker_month_and_day:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->c(I)V

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

    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->p:I

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

    const-string v0, "default_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->E:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const-string v0, "DatePickerDialog"

    const-string v1, "onCreateView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->c:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->d(Ljava/util/Calendar;)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/g;->mdtp_date_picker_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

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

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->E:I

    if-eqz p3, :cond_a

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

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    const-string v0, "max_date"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    const-string v0, "highlighted_days"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/util/Calendar;

    check-cast v0, [Ljava/util/Calendar;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->w:[Ljava/util/Calendar;

    const-string v0, "selectable_days"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/util/Calendar;

    check-cast v0, [Ljava/util/Calendar;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    const-string v0, "theme_dark"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:Z

    const-string v0, "theme_dark_changed"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->z:Z

    const-string v0, "accent"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:I

    const-string v0, "vibrate"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->B:Z

    const-string v0, "dismiss"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->C:Z

    const-string v0, "auto_dismiss"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->D:Z

    const-string v0, "title"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->t:Ljava/lang/String;

    const-string v0, "ok_resid"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->F:I

    const-string v0, "ok_string"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->G:Ljava/lang/String;

    const-string v0, "cancel_resid"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->H:I

    const-string v0, "cancel_string"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->I:Ljava/lang/String;

    move v4, v3

    move v3, v2

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/l;

    invoke-direct {v0, v7, p0}, Lcom/wdullaer/materialdatetimepicker/date/l;-><init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/a;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->n:Lcom/wdullaer/materialdatetimepicker/date/e;

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-direct {v0, v7, p0}, Lcom/wdullaer/materialdatetimepicker/date/o;-><init>(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/date/a;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/o;

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->z:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:Z

    invoke-static {v7, v0}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:Z

    :cond_0
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_day_picker_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->L:Ljava/lang/String;

    sget v1, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_select_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->M:Ljava/lang/String;

    sget v1, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_year_picker_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->N:Ljava/lang/String;

    sget v1, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_select_year:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->O:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_view_animator_dark_theme:I

    :goto_1
    invoke-static {v7, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->animator:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->n:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->h:Lcom/wdullaer/materialdatetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/o;

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

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/date/b$1;

    invoke-direct {v1, p0}, Lcom/wdullaer/materialdatetimepicker/date/b$1;-><init>(Lcom/wdullaer/materialdatetimepicker/date/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "Roboto-Medium"

    invoke-static {v7, v1}, Lcom/wdullaer/materialdatetimepicker/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->G:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget v1, Lcom/wdullaer/materialdatetimepicker/f;->cancel:I

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v5, Lcom/wdullaer/materialdatetimepicker/date/b$2;

    invoke-direct {v5, p0}, Lcom/wdullaer/materialdatetimepicker/date/b$2;-><init>(Lcom/wdullaer/materialdatetimepicker/date/b;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v5, "Roboto-Medium"

    invoke-static {v7, v5}, Lcom/wdullaer/materialdatetimepicker/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->I:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->I:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/wdullaer/materialdatetimepicker/j;->a(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:I

    :cond_1
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->i:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->i:Landroid/widget/TextView;

    iget v8, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:I

    invoke-static {v8}, Lcom/wdullaer/materialdatetimepicker/j;->a(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_2
    sget v5, Lcom/wdullaer/materialdatetimepicker/f;->day_picker_selected_date_layout:I

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget v8, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:I

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_3

    sget v0, Lcom/wdullaer/materialdatetimepicker/f;->done_background:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/b;->a(Z)V

    invoke-direct {p0, v2}, Lcom/wdullaer/materialdatetimepicker/date/b;->c(I)V

    const/4 v0, -0x1

    if-eq v4, v0, :cond_4

    if-nez v2, :cond_9

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->n:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-virtual {v0, v4}, Lcom/wdullaer/materialdatetimepicker/date/e;->a(I)V

    :cond_4
    :goto_5
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/a;

    invoke-direct {v0, v7}, Lcom/wdullaer/materialdatetimepicker/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->J:Lcom/wdullaer/materialdatetimepicker/a;

    return-object v6

    :cond_5
    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_view_animator:I

    goto/16 :goto_1

    :cond_6
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->F:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    :cond_7
    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->H:I

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    :cond_8
    const/16 v5, 0x8

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-virtual {v0, v4, v3}, Lcom/wdullaer/materialdatetimepicker/date/o;->a(II)V

    goto :goto_5

    :cond_a
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

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->J:Lcom/wdullaer/materialdatetimepicker/a;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/a;->b()V

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->C:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->J:Lcom/wdullaer/materialdatetimepicker/a;

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

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->n:Lcom/wdullaer/materialdatetimepicker/date/e;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/e;->getMostVisiblePosition()I

    move-result v0

    :cond_0
    :goto_0
    const-string v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "min_date"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->u:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "max_date"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->v:Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "highlighted_days"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->w:[Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "selectable_days"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->x:[Ljava/util/Calendar;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "theme_dark"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->y:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "theme_dark_changed"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "accent"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->A:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vibrate"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->B:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dismiss"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->C:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "auto_dismiss"

    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->D:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "default_view"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->E:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "title"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->t:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ok_resid"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->F:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ok_string"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->G:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cancel_resid"

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->H:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "cancel_string"

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->I:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->p:I

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/o;->getFirstVisiblePosition()I

    move-result v0

    const-string v1, "list_position_offset"

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/b;->o:Lcom/wdullaer/materialdatetimepicker/date/o;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/date/o;->getFirstPositionOffset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
