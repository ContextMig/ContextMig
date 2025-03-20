.class public abstract Lcom/wdullaer/materialdatetimepicker/date/i;
.super Landroid/view/View;


# static fields
.field protected static a:I

.field protected static b:I

.field protected static c:I

.field protected static d:I

.field protected static e:I

.field protected static f:I

.field protected static g:I

.field protected static h:I

.field protected static i:F


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected final E:Ljava/util/Calendar;

.field protected F:I

.field protected G:Lcom/wdullaer/materialdatetimepicker/date/k;

.field protected H:I

.field protected I:I

.field protected J:I

.field protected K:I

.field protected L:I

.field protected M:I

.field protected N:I

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private final Q:Ljava/util/Formatter;

.field private final R:Ljava/lang/StringBuilder;

.field private final S:Ljava/util/Calendar;

.field private final T:Lcom/wdullaer/materialdatetimepicker/date/j;

.field private U:Z

.field private V:I

.field protected j:Lcom/wdullaer/materialdatetimepicker/date/a;

.field protected k:I

.field protected l:Landroid/graphics/Paint;

.field protected m:Landroid/graphics/Paint;

.field protected n:Landroid/graphics/Paint;

.field protected o:Landroid/graphics/Paint;

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:I

.field protected u:I

.field protected v:I

.field protected w:Z

.field protected x:I

.field protected y:I

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/i;->a:I

    const/16 v0, 0xa

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/i;->b:I

    const/4 v0, 0x1

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/i;->c:I

    const/4 v0, 0x0

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/i;->i:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/wdullaer/materialdatetimepicker/date/a;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->k:I

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->p:I

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->q:I

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->r:I

    sget v2, Lcom/wdullaer/materialdatetimepicker/date/i;->a:I

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    iput-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->w:Z

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->x:I

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->y:I

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->z:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->B:I

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->C:I

    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->D:I

    const/4 v2, 0x6

    iput v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->F:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->V:I

    iput-object p3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->j:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->E:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->S:Ljava/util/Calendar;

    sget v3, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_day_of_week_label_typeface:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->O:Ljava/lang/String;

    sget v3, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_sans_serif:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->P:Ljava/lang/String;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->j:Lcom/wdullaer/materialdatetimepicker/date/a;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->j:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v3}, Lcom/wdullaer/materialdatetimepicker/date/a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_text_normal_dark_theme:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->H:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_month_day_dark_theme:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->J:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_text_disabled_dark_theme:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->M:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_text_highlighted_dark_theme:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->L:I

    :goto_0
    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_white:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->I:I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->j:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v0}, Lcom/wdullaer/materialdatetimepicker/date/a;->c()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->K:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_white:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->N:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->R:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->R:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->Q:Ljava/util/Formatter;

    sget v0, Lcom/wdullaer/materialdatetimepicker/e;->mdtp_day_number_size:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/i;->d:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/e;->mdtp_month_label_size:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/i;->e:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/e;->mdtp_month_day_label_text_size:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/i;->f:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/e;->mdtp_month_list_item_header_height:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/i;->g:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/e;->mdtp_day_number_select_circle_radius:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/wdullaer/materialdatetimepicker/date/i;->h:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/e;->mdtp_date_picker_view_animator_height:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getMonthHeaderSize()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getMonthViewTouchHelper()Lcom/wdullaer/materialdatetimepicker/date/j;

    move-result-object v0

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->T:Lcom/wdullaer/materialdatetimepicker/date/j;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->T:Lcom/wdullaer/materialdatetimepicker/date/j;

    invoke-static {p0, v0}, Landroid/support/v4/view/bx;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/bx;->c(Landroid/view/View;I)V

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->U:Z

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->a()V

    return-void

    :cond_1
    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_text_normal:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->H:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_month_day:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->J:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_text_disabled:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->M:I

    sget v0, Lcom/wdullaer/materialdatetimepicker/d;->mdtp_date_picker_text_highlighted:I

    invoke-static {p1, v0}, Landroid/support/v4/b/a;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->L:I

    goto/16 :goto_0
.end method

.method private a(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x7

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_7

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "E"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "he"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iw"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->E:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, v6, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ca"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "es"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const-string v0, "X"

    :cond_5
    :goto_1
    return-object v0

    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->j:Lcom/wdullaer/materialdatetimepicker/date/a;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->t:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->s:I

    invoke-interface {v0, v1, v2, p1}, Lcom/wdullaer/materialdatetimepicker/date/a;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->G:Lcom/wdullaer/materialdatetimepicker/date/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->G:Lcom/wdullaer/materialdatetimepicker/date/k;

    new-instance v1, Lcom/wdullaer/materialdatetimepicker/date/h;

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->t:I

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->s:I

    invoke-direct {v1, v2, v3, p1}, Lcom/wdullaer/materialdatetimepicker/date/h;-><init>(III)V

    invoke-interface {v0, p0, v1}, Lcom/wdullaer/materialdatetimepicker/date/k;->a(Lcom/wdullaer/materialdatetimepicker/date/i;Lcom/wdullaer/materialdatetimepicker/date/h;)V

    :cond_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->T:Lcom/wdullaer/materialdatetimepicker/date/j;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/date/j;->a(II)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/wdullaer/materialdatetimepicker/date/i;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/i;->a(I)V

    return-void
.end method

.method private a(ILjava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->t:I

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->s:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()I
    .locals 3

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->c()I

    move-result v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->B:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->B:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    rem-int/2addr v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMonthAndYearString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v0, "MMMM yyyy"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/wdullaer/materialdatetimepicker/h;->mdtp_date_v1_monthyear:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->R:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->S:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(FF)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/date/i;->b(FF)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->B:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->m:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->m:Landroid/graphics/Paint;

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/i;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->P:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->H:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->n:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->n:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->K:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->n:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->n:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->o:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->o:Landroid/graphics/Paint;

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/i;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->J:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->o:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Roboto-Medium"

    invoke-static {v1, v2}, Lcom/wdullaer/materialdatetimepicker/i;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->l:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->l:Landroid/graphics/Paint;

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/i;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->l:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->u:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->k:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getMonthHeaderSize()I

    move-result v1

    sget v2, Lcom/wdullaer/materialdatetimepicker/date/i;->f:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getMonthAndYearString()Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public abstract a(Landroid/graphics/Canvas;IIIIIIIII)V
.end method

.method protected a(III)Z
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->j:Lcom/wdullaer/materialdatetimepicker/date/a;

    invoke-interface {v2}, Lcom/wdullaer/materialdatetimepicker/date/a;->d()[Ljava/util/Calendar;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v4, v3

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-lt p1, v6, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-le p1, v6, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-lt p2, v6, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-gt p2, v6, :cond_2

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-lt p3, v6, :cond_0

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-gt p3, v5, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/wdullaer/materialdatetimepicker/date/h;)Z
    .locals 2

    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/date/h;->a:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->t:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/date/h;->b:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->s:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/wdullaer/materialdatetimepicker/date/h;->c:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->B:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->T:Lcom/wdullaer/materialdatetimepicker/date/j;

    iget v1, p1, Lcom/wdullaer/materialdatetimepicker/date/h;->c:I

    invoke-virtual {v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/j;->b(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(FF)I
    .locals 4

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->k:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->u:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->k:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getMonthHeaderSize()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    float-to-int v1, v1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    div-int/2addr v1, v2

    int-to-float v2, v0

    sub-float v2, p1, v2

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->u:I

    sub-int v0, v3, v0

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->k:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->c()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->F:I

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->requestLayout()V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getMonthHeaderSize()I

    move-result v0

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/i;->f:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->u:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->k:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    mul-int/lit8 v2, v2, 0x2

    div-int v2, v0, v2

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v2

    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->k:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->z:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    rem-int/2addr v4, v5

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->E:Ljava/util/Calendar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->E:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Lcom/wdullaer/materialdatetimepicker/date/i;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    int-to-float v3, v3

    int-to-float v5, v1

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c()I
    .locals 2

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->V:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->z:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->V:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->z:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->V:I

    goto :goto_0
.end method

.method protected c(Landroid/graphics/Canvas;)V
    .locals 13

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/i;->d:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/i;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getMonthHeaderSize()I

    move-result v1

    add-int v6, v0, v1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->u:I

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->k:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float v12, v0, v1

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->c()I

    move-result v0

    const/4 v4, 0x1

    move v11, v0

    :goto_0
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->B:I

    if-gt v4, v0, :cond_1

    mul-int/lit8 v0, v11, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    mul-float/2addr v0, v12

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->k:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v5, v0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/i;->d:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/wdullaer/materialdatetimepicker/date/i;->c:I

    sub-int/2addr v0, v1

    int-to-float v1, v5

    sub-float/2addr v1, v12

    float-to-int v7, v1

    int-to-float v1, v5

    add-float/2addr v1, v12

    float-to-int v8, v1

    sub-int v9, v6, v0

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    add-int v10, v9, v0

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->t:I

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->s:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/wdullaer/materialdatetimepicker/date/i;->a(Landroid/graphics/Canvas;IIIIIIIII)V

    add-int/lit8 v0, v11, 0x1

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->A:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    add-int/2addr v6, v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v11, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->T:Lcom/wdullaer/materialdatetimepicker/date/j;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/j;->c()V

    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->T:Lcom/wdullaer/materialdatetimepicker/date/j;

    invoke-virtual {v0, p1}, Lcom/wdullaer/materialdatetimepicker/date/j;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAccessibilityFocus()Lcom/wdullaer/materialdatetimepicker/date/h;
    .locals 4

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->T:Lcom/wdullaer/materialdatetimepicker/date/j;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/j;->b()I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/h;

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->t:I

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->s:I

    invoke-direct {v0, v2, v3, v1}, Lcom/wdullaer/materialdatetimepicker/date/h;-><init>(III)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->s:I

    return v0
.end method

.method protected getMonthHeaderSize()I
    .locals 1

    sget v0, Lcom/wdullaer/materialdatetimepicker/date/i;->g:I

    return v0
.end method

.method protected getMonthViewTouchHelper()Lcom/wdullaer/materialdatetimepicker/date/j;
    .locals 1

    new-instance v0, Lcom/wdullaer/materialdatetimepicker/date/j;

    invoke-direct {v0, p0, p0}, Lcom/wdullaer/materialdatetimepicker/date/j;-><init>(Lcom/wdullaer/materialdatetimepicker/date/i;Landroid/view/View;)V

    return-object v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->t:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/i;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/i;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/i;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->F:I

    mul-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->getMonthHeaderSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/i;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->u:I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->T:Lcom/wdullaer/materialdatetimepicker/date/j;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/j;->a()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/wdullaer/materialdatetimepicker/date/i;->a(FF)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/wdullaer/materialdatetimepicker/date/i;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1

    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->U:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_0
    return-void
.end method

.method public setDatePickerController(Lcom/wdullaer/materialdatetimepicker/date/a;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->j:Lcom/wdullaer/materialdatetimepicker/date/a;

    return-void
.end method

.method public setMonthParams(Ljava/util/HashMap;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "year"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "You must specify month and year for this view"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/wdullaer/materialdatetimepicker/date/i;->setTag(Ljava/lang/Object;)V

    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    sget v2, Lcom/wdullaer/materialdatetimepicker/date/i;->b:I

    if-ge v0, v2, :cond_1

    sget v0, Lcom/wdullaer/materialdatetimepicker/date/i;->b:I

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->v:I

    :cond_1
    const-string v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "selected_day"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->x:I

    :cond_2
    const-string v0, "month"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->s:I

    const-string v0, "year"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->t:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->w:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->y:I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->S:Ljava/util/Calendar;

    const/4 v3, 0x2

    iget v4, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->s:I

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->S:Ljava/util/Calendar;

    iget v3, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->t:I

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->S:Ljava/util/Calendar;

    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->S:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->V:I

    const-string v0, "week_start"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "week_start"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->z:I

    :goto_0
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->S:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->B:I

    move v0, v1

    :goto_1
    iget v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->B:I

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, v2}, Lcom/wdullaer/materialdatetimepicker/date/i;->a(ILjava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->w:Z

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->y:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->S:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->z:I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/date/i;->e()I

    move-result v0

    iput v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->F:I

    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->T:Lcom/wdullaer/materialdatetimepicker/date/j;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/date/j;->a()V

    return-void
.end method

.method public setOnDayClickListener(Lcom/wdullaer/materialdatetimepicker/date/k;)V
    .locals 0

    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->G:Lcom/wdullaer/materialdatetimepicker/date/k;

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 0

    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/date/i;->x:I

    return-void
.end method
