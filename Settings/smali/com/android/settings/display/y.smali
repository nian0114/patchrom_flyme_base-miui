.class Lcom/android/settings_ex/display/y;
.super Ljava/lang/Object;
.source "PaperModeFragment.java"

# interfaces
.implements Lmiui/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic Zk:Lcom/android/settings_ex/display/PaperModeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/display/PaperModeFragment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings_ex/display/y;->Zk:Lcom/android/settings_ex/display/PaperModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiui/widget/TimePicker;II)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/display/y;->Zk:Lcom/android/settings_ex/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings_ex/display/PaperModeFragment;->a(Lcom/android/settings_ex/display/PaperModeFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    mul-int/lit8 v0, p2, 0x3c

    add-int/2addr v0, p3

    invoke-static {v0}, Lcom/android/settings_ex/display/PaperModeFragment;->bM(I)I

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/display/y;->Zk:Lcom/android/settings_ex/display/PaperModeFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/android/settings_ex/display/PaperModeFragment;->pE()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/display/F;->k(Landroid/content/Context;I)V

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/display/y;->Zk:Lcom/android/settings_ex/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings_ex/display/PaperModeFragment;->b(Lcom/android/settings_ex/display/PaperModeFragment;)Lcom/android/settings_ex/dndmode/LabelPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/display/y;->Zk:Lcom/android/settings_ex/display/PaperModeFragment;

    invoke-static {}, Lcom/android/settings_ex/display/PaperModeFragment;->pE()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/display/PaperModeFragment;->a(Lcom/android/settings_ex/display/PaperModeFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/display/y;->Zk:Lcom/android/settings_ex/display/PaperModeFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/display/PaperModeFragment;->bk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/display/y;->Zk:Lcom/android/settings_ex/display/PaperModeFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/display/F;->bl(Landroid/content/Context;)V

    .line 118
    :cond_0
    return-void

    .line 111
    :cond_1
    mul-int/lit8 v0, p2, 0x3c

    add-int/2addr v0, p3

    invoke-static {v0}, Lcom/android/settings_ex/display/PaperModeFragment;->bN(I)I

    .line 112
    iget-object v0, p0, Lcom/android/settings_ex/display/y;->Zk:Lcom/android/settings_ex/display/PaperModeFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/display/PaperModeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    # getter for: Lcom/android/settings_ex/display/PaperModeFragment;->Zh:I
    invoke-static {}, Lcom/android/settings_ex/display/PaperModeFragment;->access$400()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/display/F;->l(Landroid/content/Context;I)V

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/display/y;->Zk:Lcom/android/settings_ex/display/PaperModeFragment;

    invoke-static {v0}, Lcom/android/settings_ex/display/PaperModeFragment;->c(Lcom/android/settings_ex/display/PaperModeFragment;)Lcom/android/settings_ex/dndmode/LabelPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/display/y;->Zk:Lcom/android/settings_ex/display/PaperModeFragment;

    # getter for: Lcom/android/settings_ex/display/PaperModeFragment;->Zh:I
    invoke-static {}, Lcom/android/settings_ex/display/PaperModeFragment;->access$400()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/display/PaperModeFragment;->a(Lcom/android/settings_ex/display/PaperModeFragment;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0
.end method
