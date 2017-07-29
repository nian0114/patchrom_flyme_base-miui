.class Lcom/android/settings_ex/if;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field final synthetic Bs:Lcom/android/settings_ex/it;

.field final synthetic Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/it;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/settings_ex/if;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings_ex/if;->Bs:Lcom/android/settings_ex/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/if;->Bt:Lcom/android/settings_ex/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/settings_ex/if;->Bs:Lcom/android/settings_ex/it;

    invoke-virtual {v1, p3, p4}, Lcom/android/settings_ex/it;->d(II)Lcom/android/settings_ex/iq;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->a(Lcom/android/settings_ex/TrustedCredentialsSettings;Lcom/android/settings_ex/iq;)V

    .line 234
    const/4 v0, 0x1

    return v0
.end method
