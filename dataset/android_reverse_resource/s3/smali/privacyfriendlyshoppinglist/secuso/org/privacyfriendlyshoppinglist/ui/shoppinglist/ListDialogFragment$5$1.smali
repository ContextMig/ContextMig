.class Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;
.super Ljava/lang/Object;
.source "ListDialogFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x3e1c874aef350a7bL    # -2.6134222143424706E9

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;)V
    .locals 3

    .prologue
    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->$jacocoInit()[Z

    move-result-object v0

    .line 255
    iput-object p1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->this$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->$jacocoInit()[Z

    move-result-object v6

    .line 259
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->this$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;

    iget-object v0, v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;->access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->this$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;

    iget-object v1, v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;->access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->this$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;

    iget-object v2, v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;->access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->this$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;

    iget-object v3, v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;

    aput-boolean v7, v6, v7

    .line 260
    invoke-static {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;->access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    aput-boolean v7, v6, v5

    move v4, p2

    move v5, p3

    .line 259
    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    const/4 v0, 0x3

    aput-boolean v7, v6, v0

    .line 262
    iget-object v0, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->this$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;

    iget-object v0, v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;

    invoke-static {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;->access$000(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogCache;

    move-result-object v0

    invoke-virtual {v0}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogCache;->getTimeTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->this$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;

    iget-object v1, v1, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;

    invoke-static {v1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;->access$100(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->this$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;

    iget-object v2, v2, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;

    invoke-static {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;->access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;

    move-result-object v2

    invoke-virtual {v2}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5$1;->this$1:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;

    iget-object v3, v3, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment$5;->this$0:Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;

    invoke-static {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;->access$200(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/shoppinglist/ListDialogFragment;)Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;

    move-result-object v3

    invoke-virtual {v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/main/ShoppingListActivityCache;->getActivity()Landroid/support/v7/app/AppCompatActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/framework/utils/DateUtils;->getDateAsString(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    const/4 v0, 0x4

    aput-boolean v7, v6, v0

    return-void
.end method
