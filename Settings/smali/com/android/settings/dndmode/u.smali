.class Lcom/android/settings_ex/dndmode/u;
.super Ljava/lang/Object;
.source "RepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic aaY:Lcom/android/settings_ex/dndmode/RepeatPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dndmode/RepeatPreference;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings_ex/dndmode/u;->aaY:Lcom/android/settings_ex/dndmode/RepeatPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/dndmode/u;->aaY:Lcom/android/settings_ex/dndmode/RepeatPreference;

    invoke-static {v0}, Lcom/android/settings_ex/dndmode/RepeatPreference;->a(Lcom/android/settings_ex/dndmode/RepeatPreference;)Lcom/android/settings_ex/dndmode/b;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/settings_ex/dndmode/b;->set(IZ)V

    .line 141
    return-void
.end method
